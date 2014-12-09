/*
************************************************************************************************
* NUMlockCALC                                                                                  *
*                                                                                              *
* Version:              2.2 BETA                                                               *
* AutoHotkey Version:	1.1.13.00                                                              *
* NUMlockCalc Version:	2.1 (version history at the bottom of this script)                     *
* Language:           	English                                                                *
* Platform:           	7, 8                                                                   *
* Author:             	www.twitter.com/matthiew                                               *
*                                                                                              *
* Script Function:      Maps Num Lock key to open/activate/close calc.exe. Keeps Num Lock on.  *
************************************************************************************************
*/



/*
************************************************************************************************
NUMlockCALC known issues:
  - Virtual Machines send Num Lock key presses which can launch multiple instances of calc.exe,
    and conflictwith SetNumLockState. This has been fixed for Hyper-V Virtual Machine
    Connection. Other VM software has not been tested.
  - Holding the Num Lock key can launch multiple instances of calc.exe.

	
NUMlockCALC version history:
2.2 - Updated documentation.
2.1 - Fixed conflicts with Hyper-V Virtual Machine Connection.
2.0 - Renamed to NUMlockCALC.
    - New icon.
1.0 - OnePressCalc.
************************************************************************************************
*/