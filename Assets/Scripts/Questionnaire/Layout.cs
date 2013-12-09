using UnityEngine;
using System.Collections;

public class Layout
{
	public int startX, startY, gapSize, elementWidth, elementHeight;

	public Layout(int startX, int startY, int gapSize, int elementWidth, int elementHeight)
	{
		this.startX = startX;
		this.startY = startY;
		this.gapSize = gapSize;
		this.elementWidth = elementWidth;
		this.elementHeight = elementHeight;
	}

	public Layout(Layout other)
	{
		this.startX = other.startX;
		this.startY = other.startY;
		this.gapSize = other.gapSize;
		this.elementWidth = other.elementWidth;
		this.elementHeight = other.elementHeight;
	}

	public Rect ElementRect(float gridX, float gridY)
	{
		return new Rect((int)(startX + gridX * (gapSize + elementWidth)), 
						(int)(startY + gridY * (gapSize + elementHeight)), 
						elementWidth, elementHeight);
	}

	public Rect ElementRectRange(float x1, float x2, float y1, float y2)
	{
		return new Rect((int)(startX + x1 * (gapSize + elementWidth)), 
						(int)(startY + y1 * (gapSize + elementHeight)), 
						(int)((x2 - x1) * elementWidth  + (int)(x2 - x1 - 2) * gapSize), 
						(int)((y2 - y1) * elementHeight + (int)(x2 - x1 - 2) * gapSize));
	}

	public void MoveDown(int nRows)
	{
		this.startY += nRows * (this.gapSize + this.elementHeight);
	}
}
