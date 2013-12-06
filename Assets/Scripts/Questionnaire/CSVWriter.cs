using UnityEngine;
using System.Collections;

public class CSVWriter : MonoBehaviour {

	public static bool WriteNewRow(string directory, string filename, string[] data, string separator)
	{
		string row = "";
		for(int i = 0; i < data.Length; i++)
		{
			row += data[i];
			if(i < data.Length - 1)
			{
				 row += separator;
			}
		}

		// Check whether the intended directory exists:
		if(!System.IO.Directory.Exists(directory))
			System.IO.Directory.CreateDirectory(directory);

		using (System.IO.StreamWriter file = new System.IO.StreamWriter(directory + @"/" + filename, true))
        {
            file.WriteLine(row);
        }

		return true;
	}
}
