using UnityEngine;
using System.Collections;

public static class KeyCodeParser {

	public static KeyCode Parse(string text)
	{
		KeyCode keycode = KeyCode.None;

		switch(text)
		{
			case "Backspace":
				keycode = KeyCode.Backspace;
				break;
			case "Delete":
				keycode = KeyCode.Delete;
				break;
			case "Tab":
				keycode = KeyCode.Tab;
				break;
			case "Clear":
				keycode = KeyCode.Clear;
				break;
			case "Return":
				keycode = KeyCode.Return;
				break;
			case "Pause":
				keycode = KeyCode.Pause;
				break;
			case "Escape":
				keycode = KeyCode.Escape;
				break;
			case "Space":
				keycode = KeyCode.Space;
				break;
			case "Keypad0":
				keycode = KeyCode.Keypad0;
				break;
			case "Keypad1":
				keycode = KeyCode.Keypad1;
				break;
			case "Keypad2":
				keycode = KeyCode.Keypad2;
				break;
			case "Keypad3":
				keycode = KeyCode.Keypad3;
				break;
			case "Keypad4":
				keycode = KeyCode.Keypad4;
				break;
			case "Keypad5":
				keycode = KeyCode.Keypad5;
				break;
			case "Keypad6":
				keycode = KeyCode.Keypad6;
				break;
			case "Keypad7":
				keycode = KeyCode.Keypad7;
				break;
			case "Keypad8":
				keycode = KeyCode.Keypad8;
				break;
			case "Keypad9":
				keycode = KeyCode.Keypad9;
				break;
			case "KeypadPeriod":
				keycode = KeyCode.KeypadPeriod;
				break;
			case "KeypadDivide":
				keycode = KeyCode.KeypadDivide;
				break;
			case "KeypadMultiply":
				keycode = KeyCode.KeypadMultiply;
				break;
			case "KeypadMinus":
				keycode = KeyCode.KeypadMinus;
				break;
			case "KeypadPlus":
				keycode = KeyCode.KeypadPlus;
				break;
			case "KeypadEnter":
				keycode = KeyCode.KeypadEnter;
				break;
			case "KeypadEquals":
				keycode = KeyCode.KeypadEquals;
				break;
			case "UpArrow":
				keycode = KeyCode.UpArrow;
				break;
			case "DownArrow":
				keycode = KeyCode.DownArrow;
				break;
			case "RightArrow":
				keycode = KeyCode.RightArrow;
				break;
			case "LeftArrow":
				keycode = KeyCode.LeftArrow;
				break;
			case "Insert":
				keycode = KeyCode.Insert;
				break;
			case "Home":
				keycode = KeyCode.Home;
				break;
			case "End":
				keycode = KeyCode.End;
				break;
			case "PageUp":
				keycode = KeyCode.PageUp;
				break;
			case "PageDown":
				keycode = KeyCode.PageDown;
				break;
			case "F1":
				keycode = KeyCode.F1;
				break;
			case "F2":
				keycode = KeyCode.F2;
				break;
			case "F3":
				keycode = KeyCode.F3;
				break;
			case "F4":
				keycode = KeyCode.F4;
				break;
			case "F5":
				keycode = KeyCode.F5;
				break;
			case "F6":
				keycode = KeyCode.F6;
				break;
			case "F7":
				keycode = KeyCode.F7;
				break;
			case "F8":
				keycode = KeyCode.F8;
				break;
			case "F9":
				keycode = KeyCode.F9;
				break;
			case "F10":
				keycode = KeyCode.F10;
				break;
			case "F11":
				keycode = KeyCode.F11;
				break;
			case "F12":
				keycode = KeyCode.F12;
				break;
			case "F13":
				keycode = KeyCode.F13;
				break;
			case "F14":
				keycode = KeyCode.F14;
				break;
			case "F15":
				keycode = KeyCode.F15;
				break;
			case "Alpha0":
				keycode = KeyCode.Alpha0;
				break;
			case "Alpha1":
				keycode = KeyCode.Alpha1;
				break;
			case "Alpha2":
				keycode = KeyCode.Alpha2;
				break;
			case "Alpha3":
				keycode = KeyCode.Alpha3;
				break;
			case "Alpha4":
				keycode = KeyCode.Alpha4;
				break;
			case "Alpha5":
				keycode = KeyCode.Alpha5;
				break;
			case "Alpha6":
				keycode = KeyCode.Alpha6;
				break;
			case "Alpha7":
				keycode = KeyCode.Alpha7;
				break;
			case "Alpha8":
				keycode = KeyCode.Alpha8;
				break;
			case "Alpha9":
				keycode = KeyCode.Alpha9;
				break;
			case "Exclaim":
				keycode = KeyCode.Exclaim;
				break;
			case "DoubleQuote":
				keycode = KeyCode.DoubleQuote;
				break;
			case "Hash":
				keycode = KeyCode.Hash;
				break;
			case "Dollar":
				keycode = KeyCode.Dollar;
				break;
			case "Ampersand":
				keycode = KeyCode.Ampersand;
				break;
			case "Quote":
				keycode = KeyCode.Quote;
				break;
			case "LeftParen":
				keycode = KeyCode.LeftParen;
				break;
			case "RightParen":
				keycode = KeyCode.RightParen;
				break;
			case "Asterisk":
				keycode = KeyCode.Asterisk;
				break;
			case "Plus":
				keycode = KeyCode.Plus;
				break;
			case "Comma":
				keycode = KeyCode.Comma;
				break;
			case "Minus":
				keycode = KeyCode.Minus;
				break;
			case "Period":
				keycode = KeyCode.Period;
				break;
			case "Slash":
				keycode = KeyCode.Slash;
				break;
			case "Colon":
				keycode = KeyCode.Colon;
				break;
			case "Semicolon":
				keycode = KeyCode.Semicolon;
				break;
			case "Less":
				keycode = KeyCode.Less;
				break;
			case "Equals":
				keycode = KeyCode.Equals;
				break;
			case "Greater":
				keycode = KeyCode.Greater;
				break;
			case "Question":
				keycode = KeyCode.Question;
				break;
			case "At":
				keycode = KeyCode.At;
				break;
			case "LeftBracket":
				keycode = KeyCode.LeftBracket;
				break;
			case "Backslash":
				keycode = KeyCode.Backslash;
				break;
			case "RightBracket":
				keycode = KeyCode.RightBracket;
				break;
			case "Caret":
				keycode = KeyCode.Caret;
				break;
			case "Underscore":
				keycode = KeyCode.Underscore;
				break;
			case "BackQuote":
				keycode = KeyCode.BackQuote;
				break;
			case "A":
				keycode = KeyCode.A;
				break;
			case "B":
				keycode = KeyCode.B;
				break;
			case "C":
				keycode = KeyCode.C;
				break;
			case "D":
				keycode = KeyCode.D;
				break;
			case "E":
				keycode = KeyCode.E;
				break;
			case "F":
				keycode = KeyCode.F;
				break;
			case "G":
				keycode = KeyCode.G;
				break;
			case "H":
				keycode = KeyCode.H;
				break;
			case "I":
				keycode = KeyCode.I;
				break;
			case "J":
				keycode = KeyCode.J;
				break;
			case "K":
				keycode = KeyCode.K;
				break;
			case "L":
				keycode = KeyCode.L;
				break;
			case "M":
				keycode = KeyCode.M;
				break;
			case "N":
				keycode = KeyCode.N;
				break;
			case "O":
				keycode = KeyCode.O;
				break;
			case "P":
				keycode = KeyCode.P;
				break;
			case "Q":
				keycode = KeyCode.Q;
				break;
			case "R":
				keycode = KeyCode.R;
				break;
			case "S":
				keycode = KeyCode.S;
				break;
			case "T":
				keycode = KeyCode.T;
				break;
			case "U":
				keycode = KeyCode.U;
				break;
			case "V":
				keycode = KeyCode.V;
				break;
			case "W":
				keycode = KeyCode.W;
				break;
			case "X":
				keycode = KeyCode.X;
				break;
			case "Y":
				keycode = KeyCode.Y;
				break;
			case "Z":
				keycode = KeyCode.Z;
				break;
			case "Numlock":
				keycode = KeyCode.Numlock;
				break;
			case "CapsLock":
				keycode = KeyCode.CapsLock;
				break;
			case "ScrollLock":
				keycode = KeyCode.ScrollLock;
				break;
			case "RightShift":
				keycode = KeyCode.RightShift;
				break;
			case "LeftShift":
				keycode = KeyCode.LeftShift;
				break;
			case "RightControl":
				keycode = KeyCode.RightControl;
				break;
			case "LeftControl":
				keycode = KeyCode.LeftControl;
				break;
			case "RightAlt":
				keycode = KeyCode.RightAlt;
				break;
			case "LeftAlt":
				keycode = KeyCode.LeftAlt;
				break;
			case "LeftCommand":
				keycode = KeyCode.LeftCommand;
				break;
			case "LeftApple":
				keycode = KeyCode.LeftApple;
				break;
			case "LeftWindows":
				keycode = KeyCode.LeftWindows;
				break;
			case "RightCommand":
				keycode = KeyCode.RightCommand;
				break;
			case "RightApple":
				keycode = KeyCode.RightApple;
				break;
			case "RightWindows":
				keycode = KeyCode.RightWindows;
				break;
			case "AltGr":
				keycode = KeyCode.AltGr;
				break;
			case "Help":
				keycode = KeyCode.Help;
				break;
			case "Print":
				keycode = KeyCode.Print;
				break;
			case "SysReq":
				keycode = KeyCode.SysReq;
				break;
			case "Break":
				keycode = KeyCode.Break;
				break;
			case "Menu":
				keycode = KeyCode.Menu;
				break;
			case "Mouse0":
				keycode = KeyCode.Mouse0;
				break;
			case "Mouse1":
				keycode = KeyCode.Mouse1;
				break;
			case "Mouse2":
				keycode = KeyCode.Mouse2;
				break;
			case "Mouse3":
				keycode = KeyCode.Mouse3;
				break;
			case "Mouse4":
				keycode = KeyCode.Mouse4;
				break;
			case "Mouse5":
				keycode = KeyCode.Mouse5;
				break;
			case "Mouse6":
				keycode = KeyCode.Mouse6;
				break;
			case "JoystickButton0":
				keycode = KeyCode.JoystickButton0;
				break;
			case "JoystickButton1":
				keycode = KeyCode.JoystickButton1;
				break;
			case "JoystickButton2":
				keycode = KeyCode.JoystickButton2;
				break;
			case "JoystickButton3":
				keycode = KeyCode.JoystickButton3;
				break;
			case "JoystickButton4":
				keycode = KeyCode.JoystickButton4;
				break;
			case "JoystickButton5":
				keycode = KeyCode.JoystickButton5;
				break;
			case "JoystickButton6":
				keycode = KeyCode.JoystickButton6;
				break;
			case "JoystickButton7":
				keycode = KeyCode.JoystickButton7;
				break;
			case "JoystickButton8":
				keycode = KeyCode.JoystickButton8;
				break;
			case "JoystickButton9":
				keycode = KeyCode.JoystickButton9;
				break;
			case "JoystickButton10":
				keycode = KeyCode.JoystickButton10;
				break;
			case "JoystickButton11":
				keycode = KeyCode.JoystickButton11;
				break;
			case "JoystickButton12":
				keycode = KeyCode.JoystickButton12;
				break;
			case "JoystickButton13":
				keycode = KeyCode.JoystickButton13;
				break;
			case "JoystickButton14":
				keycode = KeyCode.JoystickButton14;
				break;
			case "JoystickButton15":
				keycode = KeyCode.JoystickButton15;
				break;
			case "JoystickButton16":
				keycode = KeyCode.JoystickButton16;
				break;
			case "JoystickButton17":
				keycode = KeyCode.JoystickButton17;
				break;
			case "JoystickButton18":
				keycode = KeyCode.JoystickButton18;
				break;
			case "JoystickButton19":
				keycode = KeyCode.JoystickButton19;
				break;
			case "Joystick1Button0":
				keycode = KeyCode.Joystick1Button0;
				break;
			case "Joystick1Button1":
				keycode = KeyCode.Joystick1Button1;
				break;
			case "Joystick1Button2":
				keycode = KeyCode.Joystick1Button2;
				break;
			case "Joystick1Button3":
				keycode = KeyCode.Joystick1Button3;
				break;
			case "Joystick1Button4":
				keycode = KeyCode.Joystick1Button4;
				break;
			case "Joystick1Button5":
				keycode = KeyCode.Joystick1Button5;
				break;
			case "Joystick1Button6":
				keycode = KeyCode.Joystick1Button6;
				break;
			case "Joystick1Button7":
				keycode = KeyCode.Joystick1Button7;
				break;
			case "Joystick1Button8":
				keycode = KeyCode.Joystick1Button8;
				break;
			case "Joystick1Button9":
				keycode = KeyCode.Joystick1Button9;
				break;
			case "Joystick1Button10":
				keycode = KeyCode.Joystick1Button10;
				break;
			case "Joystick1Button11":
				keycode = KeyCode.Joystick1Button11;
				break;
			case "Joystick1Button12":
				keycode = KeyCode.Joystick1Button12;
				break;
			case "Joystick1Button13":
				keycode = KeyCode.Joystick1Button13;
				break;
			case "Joystick1Button14":
				keycode = KeyCode.Joystick1Button14;
				break;
			case "Joystick1Button15":
				keycode = KeyCode.Joystick1Button15;
				break;
			case "Joystick1Button16":
				keycode = KeyCode.Joystick1Button16;
				break;
			case "Joystick1Button17":
				keycode = KeyCode.Joystick1Button17;
				break;
			case "Joystick1Button18":
				keycode = KeyCode.Joystick1Button18;
				break;
			case "Joystick1Button19":
				keycode = KeyCode.Joystick1Button19;
				break;
			case "Joystick2Button0":
				keycode = KeyCode.Joystick2Button0;
				break;
			case "Joystick2Button1":
				keycode = KeyCode.Joystick2Button1;
				break;
			case "Joystick2Button2":
				keycode = KeyCode.Joystick2Button2;
				break;
			case "Joystick2Button3":
				keycode = KeyCode.Joystick2Button3;
				break;
			case "Joystick2Button4":
				keycode = KeyCode.Joystick2Button4;
				break;
			case "Joystick2Button5":
				keycode = KeyCode.Joystick2Button5;
				break;
			case "Joystick2Button6":
				keycode = KeyCode.Joystick2Button6;
				break;
			case "Joystick2Button7":
				keycode = KeyCode.Joystick2Button7;
				break;
			case "Joystick2Button8":
				keycode = KeyCode.Joystick2Button8;
				break;
			case "Joystick2Button9":
				keycode = KeyCode.Joystick2Button9;
				break;
			case "Joystick2Button10":
				keycode = KeyCode.Joystick2Button10;
				break;
			case "Joystick2Button11":
				keycode = KeyCode.Joystick2Button11;
				break;
			case "Joystick2Button12":
				keycode = KeyCode.Joystick2Button12;
				break;
			case "Joystick2Button13":
				keycode = KeyCode.Joystick2Button13;
				break;
			case "Joystick2Button14":
				keycode = KeyCode.Joystick2Button14;
				break;
			case "Joystick2Button15":
				keycode = KeyCode.Joystick2Button15;
				break;
			case "Joystick2Button16":
				keycode = KeyCode.Joystick2Button16;
				break;
			case "Joystick2Button17":
				keycode = KeyCode.Joystick2Button17;
				break;
			case "Joystick2Button18":
				keycode = KeyCode.Joystick2Button18;
				break;
			case "Joystick2Button19":
				keycode = KeyCode.Joystick2Button19;
				break;
			case "Joystick3Button0":
				keycode = KeyCode.Joystick3Button0;
				break;
			case "Joystick3Button1":
				keycode = KeyCode.Joystick3Button1;
				break;
			case "Joystick3Button2":
				keycode = KeyCode.Joystick3Button2;
				break;
			case "Joystick3Button3":
				keycode = KeyCode.Joystick3Button3;
				break;
			case "Joystick3Button4":
				keycode = KeyCode.Joystick3Button4;
				break;
			case "Joystick3Button5":
				keycode = KeyCode.Joystick3Button5;
				break;
			case "Joystick3Button6":
				keycode = KeyCode.Joystick3Button6;
				break;
			case "Joystick3Button7":
				keycode = KeyCode.Joystick3Button7;
				break;
			case "Joystick3Button8":
				keycode = KeyCode.Joystick3Button8;
				break;
			case "Joystick3Button9":
				keycode = KeyCode.Joystick3Button9;
				break;
			case "Joystick3Button10":
				keycode = KeyCode.Joystick3Button10;
				break;
			case "Joystick3Button11":
				keycode = KeyCode.Joystick3Button11;
				break;
			case "Joystick3Button12":
				keycode = KeyCode.Joystick3Button12;
				break;
			case "Joystick3Button13":
				keycode = KeyCode.Joystick3Button13;
				break;
			case "Joystick3Button14":
				keycode = KeyCode.Joystick3Button14;
				break;
			case "Joystick3Button15":
				keycode = KeyCode.Joystick3Button15;
				break;
			case "Joystick3Button16":
				keycode = KeyCode.Joystick3Button16;
				break;
			case "Joystick3Button17":
				keycode = KeyCode.Joystick3Button17;
				break;
			case "Joystick3Button18":
				keycode = KeyCode.Joystick3Button18;
				break;
			case "Joystick3Button19":
				keycode = KeyCode.Joystick3Button19;
				break;
			case "Joystick4Button0":
				keycode = KeyCode.Joystick4Button0;
				break;
			case "Joystick4Button1":
				keycode = KeyCode.Joystick4Button1;
				break;
			case "Joystick4Button2":
				keycode = KeyCode.Joystick4Button2;
				break;
			case "Joystick4Button3":
				keycode = KeyCode.Joystick4Button3;
				break;
			case "Joystick4Button4":
				keycode = KeyCode.Joystick4Button4;
				break;
			case "Joystick4Button5":
				keycode = KeyCode.Joystick4Button5;
				break;
			case "Joystick4Button6":
				keycode = KeyCode.Joystick4Button6;
				break;
			case "Joystick4Button7":
				keycode = KeyCode.Joystick4Button7;
				break;
			case "Joystick4Button8":
				keycode = KeyCode.Joystick4Button8;
				break;
			case "Joystick4Button9":
				keycode = KeyCode.Joystick4Button9;
				break;
			case "Joystick4Button10":
				keycode = KeyCode.Joystick4Button10;
				break;
			case "Joystick4Button11":
				keycode = KeyCode.Joystick4Button11;
				break;
			case "Joystick4Button12":
				keycode = KeyCode.Joystick4Button12;
				break;
			case "Joystick4Button13":
				keycode = KeyCode.Joystick4Button13;
				break;
			case "Joystick4Button14":
				keycode = KeyCode.Joystick4Button14;
				break;
			case "Joystick4Button15":
				keycode = KeyCode.Joystick4Button15;
				break;
			case "Joystick4Button16":
				keycode = KeyCode.Joystick4Button16;
				break;
			case "Joystick4Button17":
				keycode = KeyCode.Joystick4Button17;
				break;
			case "Joystick4Button18":
				keycode = KeyCode.Joystick4Button18;
				break;
			case "Joystick4Button19":
				keycode = KeyCode.Joystick4Button19;
				break;
		}

		return keycode;
	}

}
