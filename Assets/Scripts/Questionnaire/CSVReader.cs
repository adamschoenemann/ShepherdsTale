/*
	CSVReader by Dock. (24/8/11)
	http://starfruitgames.com
 
	usage: 
	CSVReader.SplitCsvGrid(textString)
 
	returns a 2D string array. 
 
	Drag onto a gameobject for a demo of CSV parsing.

	Heavily adapted by Thorbjørn Wolf
*/
 
using UnityEngine;
using System.Collections;
using System.Linq; 
 
public class CSVReader : MonoBehaviour 
{

	public static string[,] Read(TextAsset csvFile)
	{
		return SplitCsvGrid(csvFile.text);
	}
 
	// splits a CSV file into a 2D string array
	static public string[,] SplitCsvGrid(string csvText)
	{
		string[] rows = csvText.Split("\n"[0]); 
		int nCols = rows[0].Split(',').Length;
		string[,] output = new string[rows.Length, nCols];

		for(int r = 0; r < rows.Length; r++)
		{
			string[] line = rows[r].Split(',');
			for(int c = 0; c < line.Length && c < nCols; c++)
			{
				output[r,c] = line[c];
			}
		}

		return output;
	}
 
	// splits a CSV row 
	static public string[] SplitCsvLine(string line)
	{
		return (from System.Text.RegularExpressions.Match m in System.Text.RegularExpressions.Regex.Matches(line,
		@"(((?<x>(?=[,\r\n]+))|""(?<x>([^""]|"""")+)""|(?<x>[^,\r\n]+)),?)", 
		System.Text.RegularExpressions.RegexOptions.ExplicitCapture)
		select m.Groups[1].Value).ToArray();
	}
}