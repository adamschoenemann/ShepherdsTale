using UnityEngine;
using System.Collections;
using System;

public class PersonalityResultsPage {

	private Layout layout;
	private ParameterLine[] lines;

	private static readonly string loE = "Reserved and shy in company, " +
										 "able to concentrate on long tasks, " +
										 "prefers a calm environment";/*, " +
										 "dislike the limelight and attention, " +
										 "are inhibited and somewhat reluctant in teams, " +
										 "not natural communicators, " +
										 "deliberate, and reflect on things, " +
										 "lacks spontaneity.";*/
	private static readonly string hiE = "Open and talkative, " +
										 "competitive, enthusiastic and persuasive, " +
										 "enjoys a fast pace and variety at work";/*, " +
										 "are gregarious, " +
										 "socially active and energetic, " +
										 "can be impulsive or indiscreet, " +
										 "need praise and enjoy attention, " +
										 "can lack concentration in routine or long tasks.";
										 */

	private static readonly string loA = "Self-reliant and independent, " +
										 //"not natural team players, " +
										 "goal oriented - tough and determined, " +
										 "capable of dealing with office politics";/*, " +
										 "drive through obstacles, " +
										 "somewhat impatient with weaker colleagues, " +
										 "able to make unpopular decisions, " +
										 "autocratic management style.";*/
	private static readonly string hiA = "Empathetic and consensus oriented, " +
										 "enjoys team participation, " +
										 "tolerant of others";/*, " +
										 "seen as kind and generous, " +
										 "patient and democratic with others, " +
										 "can find disciplining others difficult, " +
										 "can be seen as too soft or submissive, " +
										 "naturally democratic management style.";
										 */

	private static readonly string loC = "Has a flexible and informal approach to work, " +
										 "is a multi-tasker, " +
										 "is not detail conscious, " +
										 "but prefers big picture";/*, " +
										 "are less committed to formal tasks, " +
										 "work well in chaotic environments, " +
										 "dislike paper work - unstructured.";*/
	private static readonly string hiC = "Has a structured approach to work, " +
										 "is quality conscious and detailed, " +
										 "makes plans and forecasts - is organised";/*, " +
										 "are reliable, efficient, " +
										 "persevering, dutiful, " +
										 "committed to the job - striving, " +
										 "and keen to achieve.";*/

	private static readonly string loN = "Relaxed, calm under pressure, " +
										 "high self esteem, " +
										 "decisive, assert themselves";/*, " +
										 "are optimistic, enjoy taking the lead, " +
										 "are resilient to pressure, " +
										 "cope with the unexpected, " +
										 "enjoy autonomy, " +
										 "and are ambitious.";*/
	private static readonly string hiN = "Concerned by change or the unexpected, " +
										 "hesitant, " +
										 "prone to anxiety under pressure, " +
										 //"check with superiors, " +
										 "dislike making big/important decisions";/*, " +
										 "are not ambitious, " +
										 "somewhat pessimistic, " +
										 "are unsure of self, " +
										 "may be temperamental, " +
										 "have low emotional control, " +
										 "are nervous presenting self or own ideas.";*/

	private static readonly string loO = "Follows rules and procedures, " +
										 "risk-averse and cautious of change, " +
										 //"adapt rather than create new approaches, " +
										 "are conservative and serious";/*, " +
										 "obedient to corporate methodology, " +
										 "practical and down to earth, " +
										 "adhere to guidelines and systems.";*/
	private static readonly string hiO = "Finds routines and systems constricting, " +
										 "enjoys challenging the status quo, " +
										 "champions change - accepts risks";/*, " +
										 "are idealistic, with a variety of interests, " +
										 "creative thinkers and problem solvers, " +
										 "unconventional and intellectual, " +
										 "think on their feet, improvise.";*/

	private float o = 0, c = 0, e = 0, a = 0, n = 0;

	public PersonalityResultsPage(Layout layout, string[] results, string[] types, string[] flipRating)
	{
		// Fix layout
		this.layout = new Layout(layout);
		int startX = this.layout.startX;
		int startY = this.layout.startY;
		this.layout.startX -= (startX/2);
		this.layout.elementWidth += (startX/3);
		this.layout.startY -= (startY/2);
		this.layout.elementHeight += (startY/3);

		
		int nO = 0, nC = 0, nE = 0, nA = 0, nN = 0;
		for(int i = 0; i < results.Length; i++)
		{
			int val;
			if(!Int32.TryParse(results[i], out val))
			{
				continue;
			}

			if(flipRating[i] == "y")
			{
				val = 4 - val;
			}

			switch(types[i])
			{
				case "O":
				case "o":
					o += val;
					nO++;
					break;
				case "C":
				case "c":
					c += val;
					nC++;
					break;
				case "E":
				case "e":
					e += val;
					nE++;
					break;
				case "A":
				case "a":
					a += val;
					nA++;
					break;
				case "N":
				case "n":
					n += val;
					nN++;
					break;
			}
		}

		o /= nO;
		c /= nC;
		e /= nE;
		a /= nA;
		n /= nN;

		int y = 0;
		lines = new ParameterLine[5];
		lines[0] = new ParameterLine(this.layout, y++, loO, hiO, o);
		lines[1] = new ParameterLine(this.layout, y++, loC, hiC, c);
		lines[2] = new ParameterLine(this.layout, y++, loE, hiE, e);
		lines[3] = new ParameterLine(this.layout, y++, loA, hiA, a);
		lines[4] = new ParameterLine(this.layout, y++, loN, hiN, n);

	}

	public void Draw()
	{
		GUI.Label(layout.ElementRect(1.0f,-0.5f), "Your result:");
		foreach(ParameterLine p in lines)
		{
			p.Draw();
		}
	}

	private class ParameterLine
	{
		private Layout layout;
		private int y;
		private string lo, hi;
		private float value;

		public ParameterLine(Layout layout, int y, string lo, string hi, float value)
		{
			this.layout = layout;
			this.y = y;
			this.lo = lo;
			this.hi = hi;
			this.value = value;
		}

		public void Draw()
		{
			GUI.Label(layout.ElementRect(0, y), lo, "box");

			GUI.HorizontalSlider(layout.ElementRect(1, y + 0.33f), value, 0, 4);

			GUI.Label(layout.ElementRect(2, y), hi, "box");
		}
	}


}
