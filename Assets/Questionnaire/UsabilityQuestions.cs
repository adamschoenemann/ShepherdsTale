using UnityEngine;
using System.Collections;
using System.Linq; 

// This class uses CSVReader to handle reading from a specified TextAsset (csv formatted)
// and can convey the data in its different, project-specific columns (left-side string, right-side string,
// whether the scoring for the question should be inverted, and question type)
public class UsabilityQuestions : MonoBehaviour {

	public TextAsset csvFile;
	private string[] uQuestions;

	public int Length {
		get; 
		private set;
	}

	// Use this for initialization
	void Start () {
		string[,] fromCsv = CSVReader.Read(csvFile);
		int nRows = fromCsv.GetLength(0) - 1;

		uQuestions = new string[nRows];

		// Assume first row is titles, and store all the data in the proper arrays
		for(int i = 1; i < fromCsv.GetLength(0); i++)
		{
			uQuestions[i - 1] = fromCsv[i, 0];
		}
		Length = uQuestions.Length;
	}

	public string[] GetUQuestions()
	{
		string[] output = new string[uQuestions.Length];
		uQuestions.CopyTo(output, 0);
		return output;
	}

	public string GetUQuestion(int index)
	{
		if(index >= Length)
		{
			return "";
		}
		else
		{
			return uQuestions[index];
		}
	}
}