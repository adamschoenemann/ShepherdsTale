using UnityEngine;
using System.Collections;
using System.Linq; 

// This class uses CSVReader to handle reading from a specified TextAsset (csv formatted)
// and can convey the data in its different, project-specific columns (left-side string, right-side string,
// whether the scoring for the question should be inverted, and question type)
public class PersonalityQuestions : MonoBehaviour {

	public TextAsset csvFile;
	private string[] lefthandQuestions, righthandQuestions;
	private bool[] flipRating;
	private string[] type;

	public int Length {
		get; 
		private set;
	}

	// Use this for initialization
	void Start () {
		string[,] fromCsv = CSVReader.Read(csvFile);
		int nRows = fromCsv.GetLength(0) - 1;

		lefthandQuestions = new string[nRows];
		righthandQuestions = new string[nRows];
		flipRating = new bool[nRows];
		type = new string[nRows];

		// Assume first row is titles, and store all the data in the proper arrays
		for(int i = 1; i < fromCsv.GetLength(0); i++)
		{
			lefthandQuestions[i - 1] = fromCsv[i, 0];
			righthandQuestions[i - 1] = fromCsv[i, 1];
			flipRating[i - 1] = (fromCsv[i, 2] == "y" ? true : false);
			type[i - 1] = fromCsv[i, 3];
		}

		Length = lefthandQuestions.Length;
	}

	public string[] GetLefthandQuestions()
	{
		string[] output = new string[lefthandQuestions.Length];
		lefthandQuestions.CopyTo(output, 0);
		return output;
	}

	public string[] GetRighthandQuestions()
	{
		string[] output = new string[righthandQuestions.Length];
		righthandQuestions.CopyTo(output, 0);
		return output;
	}

	public string[] GetFlipRatings()
	{
		string[] output = new string[flipRating.Length];
		for(int i = 0; i < flipRating.Length; i++)
		{
			output[i] = (flipRating[i] ? "y" : "n");
		}

		//flipRating.CopyTo(output, 0);
		return output;
	}

	public string[] GetTypes()
	{
		string[] output = new string[type.Length];
		type.CopyTo(output, 0);
		return output;
	}

	public string GetLefthandQuestion(int index)
	{
		if(index >= Length)
		{
			return "";
		}
		else
		{
			return lefthandQuestions[index];
		}
	}

	public string GetRighthandQuestion(int index)
	{
		if(index >= Length)
		{
			return "";
		}
		else
		{
			return righthandQuestions[index];
		}
	}

	public bool GetFlipRating(int index)
	{
		if(index >= Length)
		{
			return false;
		}
		else
		{
			return flipRating[index];
		}
	}

	public string GetType(int index)
	{
		if(index >= Length)
		{
			return "";
		}
		else
		{
			return type[index];
		}
	}
}