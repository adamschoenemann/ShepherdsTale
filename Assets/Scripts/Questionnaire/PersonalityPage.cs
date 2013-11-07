using UnityEngine;
using System.Collections;

// This class is used to manage a page of personality questions
// That is to display, check whether answers have been given, and 
// read the answer in each row.
public class PersonalityPage
{
	private PersonalityRow[] questions;

	public PersonalityPage(string[] left, string[] right, int startIndex, int endIndex, Layout layout)
	{
		questions = new PersonalityRow[endIndex - startIndex + 1];
		
		for(int i = 0; i < questions.Length; i++)
		{
			Layout rowLayout = new Layout(layout);
			rowLayout.MoveDown(i);
			questions[i] = new PersonalityRow(left[i + startIndex], right[i + startIndex], rowLayout);
		}	
	}

	public void Draw()
	{
		for(int i = 0; i < questions.Length; i++)
		{
			questions[i].Draw();
		}
	}

	public bool IsAnswered()
	{
		for(int i = 0; i < questions.Length; i++)
		{
			if(questions[i].Value == -1)
				return false; 
		}

		return true;
	}

	public string[] GetAnswers()
	{
		string[] output = new string[questions.Length];
		for(int i = 0; i < output.Length; i++)
		{
			output[i] = questions[i].Value.ToString(); 
		}

		return output;
	}
}
