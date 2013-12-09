﻿using UnityEngine;
using System.Collections;

// This class is used to manage a page of personality questions
// That is to display, check whether answers have been given, and 
// read the answer in each row.
public class PilotPage
{
	private PilotRow[] questions;
	private Layout layout;

	public PilotPage(string[] left, int startIndex, int endIndex, Layout layout)
	{
		this.layout = layout;
		questions = new PilotRow[endIndex - startIndex + 1];
		
		for(int i = 0; i < questions.Length; i++)
		{
			Layout rowLayout = new Layout(layout);
			rowLayout.MoveDown(i);
			questions[i] = new PilotRow(left[i + startIndex], rowLayout);
		}	
	}

	public void Draw()
	{
		GUI.Toolbar(layout.ElementRectRange(1f, 3f, -1f, 0f)/*layout.ElementRect(1, -1)*/, -1, new string[]{ "No", "Not so much", "So and so", "Almost", "Yes"});

		for(int i = 0; i < questions.Length; i++)
		{
			questions[i].Draw(i);
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
