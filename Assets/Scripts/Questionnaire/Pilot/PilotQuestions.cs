using UnityEngine;
using System.Collections;
using System.Linq; 

// This class uses CSVReader to handle reading from a specified TextAsset (csv formatted)
// and can convey the data in its different, project-specific columns (left-side string, right-side string,
// whether the scoring for the question should be inverted, and question type)
public class PilotQuestions : MonoBehaviour {

	public TextAsset csvFile;
	private string[] questions;

	public int Length {
		get; 
		private set;
	}

	// Use this for initialization
	void Start () {
		string[,] fromCsv = CSVReader.Read(csvFile);
		int nRows = fromCsv.GetLength(0) - 1;

		questions = new string[nRows];

		// Assume first row is titles, and store all the data in the proper arrays
		for(int i = 1; i < fromCsv.GetLength(0); i++)
		{
			questions[i - 1] = fromCsv[i, 0];
		}
		Length = questions.Length;
	}

	public string[] GetQuestions()
	{
		string[] output = new string[questions.Length];
		questions.CopyTo(output, 0);
		return output;
	}

	public string GetQuestion(int index)
	{
		if(index >= Length)
		{
			return "";
		}
		else
		{
			return questions[index];
		}
	}
}