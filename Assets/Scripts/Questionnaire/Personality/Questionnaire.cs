using UnityEngine;
using System.Collections;
using System;

// This class handles GUI layout and display, 
// retrieving questions thru the PersonalityQuestions class,
// keeping track of progress in the questionnaire, 
// and checking that everything has been answered by the user.
// Finally, it also stores the information to .../Assets/Output/QuestionnaireResponses.csv
// including a time stamp
public class Questionnaire : MonoBehaviour {

	public PersonalityQuestions personalityQuestions;
	public GUISkin skin;
	public string sceneAfterResults;
	public bool debug = false;

	private ProgressBar progressBar;
	private DemographicPage demoPage;
	private InstructionsPage instructionsPage;
	private PersonalityPage[] personalityPages;
	private PersonalityResultsPage personalityResultsPage;

	private int personalityPageIndex = -2; // -2: demographics, -1: instructions page
	private readonly int noOfDemographicQuestions = 3;

	// Layout
	private Layout layout;
	private int questionsPerPage = 5;
	private int maxNoElementsY = 8;

	private int fillOutAllAnswersLabelTimer = 0;

	void Start () {
		Screen.showCursor = true;

		// Layout
		float offsetXFactor = 1.0f/6.0f; // The amount of empty screen space in each vertical margin
		float offsetYFactor = 1.0f/6.0f; // The amount of empty screen space in the top horizontal margin
		int gapSize = 10;
		int defaultHeight = 50;

		layout = new Layout((int)(Screen.width  * offsetXFactor), // Horizontal offset
							(int)(Screen.height * offsetYFactor), // Vertical offset
							gapSize, // Gap between elements
							(int)(Screen.width * (1-2*offsetXFactor)/3), // Element width
							(int)(Screen.height < Screen.height * offsetYFactor + maxNoElementsY * (defaultHeight + gapSize) ? // Element height
									((Screen.height - Screen.height * offsetYFactor - maxNoElementsY * gapSize) / maxNoElementsY) : 
									defaultHeight)
							); 

		progressBar = new ProgressBar(layout.ElementRect(0, 8));
		demoPage = new DemographicPage(layout);

		// Initialize personalityQuestions
		string[] left = personalityQuestions.GetLefthandQuestions();
		string[] right = personalityQuestions.GetRighthandQuestions();

		personalityPages = new PersonalityPage[ (int)Math.Ceiling((float)(left.Length)/questionsPerPage)];

		for(int i = 0; i < personalityPages.Length; i++)
		{
			personalityPages[i] = new PersonalityPage(left, right, 
				i * questionsPerPage, // Startindex
				Math.Min((i + 1) * questionsPerPage - 1, left.Length - 1), // Endindex
				layout);
		}

		// Initialize instructions page
		instructionsPage = new InstructionsPage(layout);

		//PrimeOutputFile(); // Insert suitable header in the output file
		//personalityPageIndex = 5; // Go to last page
	}
	
	// Update is called once per frame
	void OnGUI () {

		GUI.skin = this.skin;

		if(debug)
		{
			if(personalityPageIndex < personalityPages.Length)
			{
				if(GUI.Button(layout.ElementRect(1, 8.75f), "Results page"))
				{
					personalityPageIndex = personalityPages.Length;
				}
			}
		}

		if(personalityPageIndex == -2)
		{
			demoPage.Draw();
		}
		else if(personalityPageIndex == -1)
		{
			instructionsPage.Draw();
		}
		else if(personalityPageIndex >= personalityPages.Length)
		{
			if(personalityResultsPage == null){
				personalityResultsPage = new PersonalityResultsPage(layout, GetPersonalityAnswers(), personalityQuestions.GetTypes(), personalityQuestions.GetFlipRatings());
			}
			personalityResultsPage.Draw();
			if(personalityResultsPage.IsUserReadyToStartGame())
			{
				Screen.showCursor = false;
				GoToNextScene();
			}
			return;
		}
		else
		{
			// Draw current page of the personality thingy.
			personalityPages[personalityPageIndex].Draw();
		}

		progressBar.progress = GetProgress();
		progressBar.Draw();

		// Next page button
		if(GUI.Button(layout.ElementRect(1, 7), "Next page"))
		{
			if((personalityPageIndex == -1) || (personalityPageIndex == -2 && demoPage.Answered)) // Still on demographics page, but it is answered
			{
				personalityPageIndex++; // Move into personality pages	
			}
			else if(personalityPageIndex > -1 && personalityPages[personalityPageIndex].IsAnswered())
			{
				personalityPageIndex++;
				if(personalityPageIndex >= personalityPages.Length) // Finished the questionnaire?
				{
					// Gather questionnaire data
					// Save questionnaire data to disk
					WriteAnswersToDisk();
				}
			}
			else
			{
				fillOutAllAnswersLabelTimer = 300; // Display label saying "Answer all the questions."
			}
		}

		// Show label saying "Answer all the questions." ?
		if(fillOutAllAnswersLabelTimer > 0)
		{
			fillOutAllAnswersLabelTimer--;
			GUI.Label(layout.ElementRect(1,6), "Please answer all the questions.", "box");
		}		
	}

	public float GetProgress()
	{
		return Math.Min(1.0f, Math.Max(0.0f, (float)(personalityPageIndex + 2)/(personalityPages.Length + 2))); // Ya, clamp to range [0;1]
	}

	private string[] GetAnswers()
	{
		string[] output = new string[personalityQuestions.Length + noOfDemographicQuestions];

		// Demographic responses
		output[0] = demoPage.Gender;
		output[1] = demoPage.Age;
		output[2] = demoPage.Nationality;

		// Personality question responses
		/*int index = noOfDemographicQuestions;
		for(int page = 0; page < personalityPages.Length; page++)
		{
			string[] pageAnswers = personalityPages[page].GetAnswers();

			Array.Copy(pageAnswers, 0, output, index, pageAnswers.Length);
			index += pageAnswers.Length;
		}*/
		string[] personalityAnswers = GetPersonalityAnswers();
		personalityAnswers.CopyTo(output, 3);

		return output;
	}

	private string[] GetPersonalityAnswers()
	{
		string[] output = new string[personalityQuestions.Length];

		int index = 0;
		for(int page = 0; page < personalityPages.Length; page++)
		{
			string[] pageAnswers = personalityPages[page].GetAnswers();

			Array.Copy(pageAnswers, 0, output, index, pageAnswers.Length);
			index += pageAnswers.Length;
		}

		return output;
	}

	private void PrimeOutputFile()
	{
		string[] header = new string[personalityQuestions.Length + noOfDemographicQuestions + 1];
		header[0] = "Timestamp";
		header[1] = "Gender";
		header[2] = "Age";
		header[3] = "Nationality";
		for(int i = 4; i < header.Length; i++)
		{
			header[i] = "q" + (i - 3).ToString();
		}
		
		WriteLine(header);
		//CSVWriter.WriteNewRow(Application.dataPath + @"/Output", "QuestionnaireResponses.csv", header, ",");
	}

	private void WriteAnswersToDisk()
	{
		string timestamp = (DateTime.Now).ToString("yyyyMMddHHmmssffff");
		string[] answers = GetAnswers();
		string[] output = new string[1 + answers.Length];
		output[0] = timestamp;
		answers.CopyTo(output, 1);

		WriteLine(output);
		//CSVWriter.WriteNewRow(Application.dataPath + @"/Output", "QuestionnaireResponses.csv", output, ",");
	}

	private void WriteLine(string[] line)
	{
		CSVWriter.WriteNewRow(Application.dataPath + @"/Output", "QuestionnaireResponses.csv", line, "|"); // Separate by pipe
	}

	private void GoToNextScene()
	{
		Application.LoadLevel(sceneAfterResults);
	}
}


