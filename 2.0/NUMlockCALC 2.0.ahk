/*
************************************************************************************************
* NUMlockCALC                                                                                  *
*                                                                                              *
* AutoHotkey Version:	1.1                                                                    *
* NUMlockCalc Version:	2.0 (version history at the bottom of this script)                     *
* Language:           	English                                                                *
* Platform:           	Windows Vista, 7, 8                                                    *
* Author:             	Jive Turkey (message me on the AHK forums or www.twitter.com/matthiew) *
*                                                                                              *
* Script Function:    Maps Num Lock key to open/activate/close calc.exe. Keeps Num Lock on.    *
************************************************************************************************
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetNumLockState, AlwaysOn

NumLock::
	IfWinExist, Calculator
		{
		IfWinActive, Calculator
			{
			WinClose, Calculator
			}
		else
			{
			WinActivate, Calculator
			}
		}
	else
		{
		Run calc
		WinActivate, Calculator
		}
	return
	
	
	
/***********************************************************************************************
NUMlockCALC known issues:
	- VMs send Num Lock key presses which can launch multiple instances of calc.exe
	- Holding the Num Lock key can launch multiple instances of calc.exe

	
NUMlockCALC version history:
1.0 - OnePressCalc                                                                           
2.0 - Renamed to NUMlockCALC
	- New icon
***********************************************************************************************/