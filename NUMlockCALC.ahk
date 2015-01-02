/*
************************************************************************************************
* NUMlockCALC                                                                                  *
*                                                                                              *
* Version:              2.3 BETA                                                               *
* AutoHotkey Version:	1.1                                                                    *
* NUMlockCalc Version:	2.1 (version history at the bottom of this script)                     *
* Language:           	English                                                                *
* Platform:           	7, 8                                                                   *
* Author:             	www.twitter.com/matthiew                                               *
*                                                                                              *
* Script Function:      Maps Num Lock key to open/activate/close calc.exe. Keeps Num Lock on.  *
************************************************************************************************
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance




SetNumLockState, AlwaysOn
NumLock::
	SetNumLockState, AlwaysOn
	IfWinNotExist, ahk_exe vmconnect.exe
		{
		#MaxHotkeysPerInterval 70
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
		}
	else
		#MaxHotkeysPerInterval 2000
		IfWinActive, ahk_exe vmconnect.exe
			{
;			Do nothing while Hyper-V Virtual Machine Connection is active because
;			it will send hundreds of Num Lock key presses.
			}
	return
	
	
	
/*
************************************************************************************************
NUMlockCALC known issues:
  - Virtual Machines send Num Lock key presses which can launch multiple instances of calc.exe,
    and conflictwith SetNumLockState. This has been fixed for Hyper-V Virtual Machine
    Connection. Other VM software has not been tested.
  - Holding the Num Lock key can launch multiple instances of calc.exe.
  
  
TO DO:
 - Compile.

	
NUMlockCALC version history:
2.3 - Added #SingleInstance.
2.2 - Updated documentation.
2.1 - Fixed conflicts with Hyper-V Virtual Machine Connection.
2.0 - Renamed to NUMlockCALC.
    - New icon.
1.0 - OnePressCalc.
************************************************************************************************
*/