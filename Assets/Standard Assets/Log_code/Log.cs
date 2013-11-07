using UnityEngine;
using System.Collections;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Linq;

public class GameObjectRecord
{
	public readonly Vector3 position;
	public readonly Quaternion rotation;
	public readonly string instanceName;

	private GameObjectRecord (string instanceName, float px, float py, float pz, float rx, float ry, float rz, float rw)
	{
		position = new Vector3 (px, py, pz);
		rotation = new Quaternion (rx, ry, rz, rw);
		this.instanceName = instanceName;
	}
	
	public GameObjectRecord (GameObject go)
	{
		if (go != null) {
			Transform t = go.transform;
			
			try {
				position = new Vector3 (t.position.x, t.position.y, t.position.z);
				rotation = new Quaternion (t.rotation.x, t.rotation.y, t.rotation.z, t.rotation.w);
				instanceName = go.name;
			} catch (MissingReferenceException) {
				position = new Vector3 (float.NaN, float.NaN, float.NaN);
				rotation = new Quaternion (float.NaN, float.NaN, float.NaN, float.NaN);
				instanceName = "missing";
			}
		} else {
			position = new Vector3 (float.NaN, float.NaN, float.NaN);
			rotation = new Quaternion (float.NaN, float.NaN, float.NaN, float.NaN);
			instanceName = "null";
		}
	}
	
	public static GameObjectRecord Parse (string instanceName, string s)
	{
		string[] tokens = s.Split (':');
		return new GameObjectRecord (instanceName, float.Parse (tokens [0]), float.Parse (tokens [1]), float.Parse (tokens [2]), float.Parse (tokens [3]), float.Parse (tokens [4]), float.Parse (tokens [5]), float.Parse (tokens [6]));
	}
	
	public override string ToString ()
	{
		return position.x + ":" + position.y + ":" + position.z + ":" + rotation.x + ":" + rotation.y + ":" + rotation.z + ":" + rotation.w;
	}
}

public class LogHeader {
	public readonly string Timestamp = "Timestamp";
	public readonly string Originator = "Originator";
	public readonly string OriginatorID = "OriginatorID";
	public readonly string Message = "Event";
	public readonly string MessageParameter = "Parameter";
	public readonly string[] ObjectsNames;
	
	public LogHeader(List<GameObject> objects){
		ObjectsNames = new string[objects.Count];
		for (int i=0;i<objects.Count;i++)
			ObjectsNames[i] = objects[i].name;
	}
	
	private LogHeader(string[] tokenisedLine){
		ObjectsNames = new string[tokenisedLine.Length-5];
		for (int i=0;i<tokenisedLine.Length-5;i++)
			ObjectsNames[i] = tokenisedLine[i+5];
	}
	
	public static LogHeader Parse (string line)
	{
		string[] tokens = line.Split (',');
		return new LogHeader(tokens);
	}
	
	public override string ToString ()
	{
		string rVal = Timestamp + "," + Originator + "," + OriginatorID + "," + Message + "," + MessageParameter;
		foreach (string n in ObjectsNames)
			rVal += "," + n;
		return rVal;
	}	
}

public class LogEntry
{
	public float timestamp;
	public GameObjectRecord[] TrackedObjects;
	private string gameEventOriginatorName;
	private int gameEventOriginatorID;
	private string gameEvent;
	private bool parameter;

	public string GameEventOriginatorName {
		get {
			return this.gameEventOriginatorName;
		}
	}

	public object GameEventParameter {
		get {
			return this.parameter;
		}
	}
	
	public float Timestamp {
		get {
			return this.timestamp;
		}
	}
	
	public string GameEvent {
		get {
			return this.gameEvent;
		}
	}

	public int GameEventOriginatorID {
		get {
			return this.gameEventOriginatorID;
		}
	}
	
	private LogEntry (float timestamp)
	{
		this.timestamp = timestamp;
	}
	
	public LogEntry (List<GameObject> trackedObjects, GameObject eventOriginator, string gameEvent, bool parameter)
	{
		timestamp = Time.timeSinceLevelLoad;
		TrackedObjects = new GameObjectRecord[trackedObjects.Count];
		for (int i=0; i<trackedObjects.Count; i++)
			TrackedObjects [i] = new GameObjectRecord (trackedObjects [i]);
		this.gameEvent = gameEvent;
		this.gameEventOriginatorID = eventOriginator.GetInstanceID ();
		this.gameEventOriginatorName = eventOriginator.name;
		this.parameter = parameter;
	}
	
	public static LogEntry Parse (LogHeader header,string line)
	{
		string[] tokens = line.Split (',');
		LogEntry le = new LogEntry (float.Parse (tokens [0]));
		le.gameEventOriginatorName = tokens [1];
		le.gameEventOriginatorID = int.Parse (tokens [2]);
		le.gameEvent = tokens [3];
		le.parameter = bool.Parse (tokens [4]);
		
		le.TrackedObjects = new GameObjectRecord[tokens.Length - 5];
		for (int i=0; i<le.TrackedObjects.Length; i++)
			le.TrackedObjects [i] = GameObjectRecord.Parse (header.ObjectsNames[i],tokens [i + 5]);

		return le;
	}
	
	public override string ToString ()
	{
		string rVal = timestamp.ToString (".000") + "," + gameEventOriginatorName + "," + gameEventOriginatorID + "," + gameEvent + "," + parameter;
		foreach (GameObjectRecord tr in TrackedObjects)
			rVal += "," + tr;
		return rVal;
	}
}

public class Log : IEnumerable
{
	LogHeader Header;
	private List<LogEntry> Entries;
	private string logFileName;
	private List<GameObject> trackedObjects;
	private bool readOnly = false;
	
	private Log (List<GameObject> trackedObjects)
	{
		if (!System.IO.Directory.Exists(Application.dataPath + "/Logs/"))
			System.IO.Directory.CreateDirectory(Application.dataPath + "/Logs/");

		logFileName = Application.dataPath + "/Logs/" + System.DateTime.UtcNow.ToString ("yyyy_MM_dd_HH_mm_ss") + ".csv";
		Header = new LogHeader(trackedObjects);
		Entries = new List<LogEntry> ();
		this.trackedObjects = trackedObjects;
	}
	
	private void parseFile (string fileName)
	{
		
		logFileName = fileName;
		StreamReader rFile = new StreamReader (fileName);
		string line = rFile.ReadLine ();
		Header = LogHeader.Parse(line);
		line = rFile.ReadLine ();
		while (line != null) {
			Entries.Add (LogEntry.Parse (Header,line));
			line = rFile.ReadLine ();
		}
		rFile.Close ();
		readOnly = true;
	}
	
	[MethodImpl(MethodImplOptions.NoInlining)]
	public void Record (GameObject originator, string gameEvent, bool gameEventParameter)
	{
		if (!readOnly){
			Entries.Add (new LogEntry (trackedObjects, originator, gameEvent, gameEventParameter));
		
		}
	}
	
	public void Save ()
	{
		if (!readOnly) {
			StreamWriter lFile = new StreamWriter (logFileName);
			
			lFile.WriteLine(Header.ToString());
			foreach (LogEntry l in Entries)
				lFile.WriteLine (l.ToString ());
			
			lFile.Flush ();
			lFile.Close ();
		}
	}
	
	public LogEntry Get (int index)
	{
		return Entries [index];
	}
	
	public int Count {
		get { return Entries.Count; }
	}
	
	public static Log CreateNew (List<GameObject> agents)
	{
		return new Log (agents);
	}
	
	public static Log LoadExisting (string fileName, List<GameObject> agents)
	{
		Log rVal = new Log (agents);
		rVal.parseFile (fileName);
		return rVal;
	}

	System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator ()
	{
		return Entries.GetEnumerator ();
	}
}