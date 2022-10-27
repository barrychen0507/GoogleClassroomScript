@if (@CodeSection == @Batch) @then
@echo off
SET SendKeys=CScript //nologo //E:JScript "%~F0"
START chrome -new-window --incognito "https://accounts.google.com"
TIMEOUT /t 3
%SendKeys% "+"
TIMEOUT /t 1
%SendKeys% "*YOUR ACCOUNT*"
%SendKeys% "{ENTER}"
TIMEOUT /t 3
%SendKeys% "*YOUR PASSWORD*"
%SendKeys% "{ENTER}"
TIMEOUT /t 3
%SendKeys% "^{t}"
%SendKeys% "^{1}"
%SendKeys% "^{w}"
%SendKeys% "classroom.google.com"
%SendKeys% "{ENTER}"
TIMEOUT /t 5
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
TIMEOUT /t 5
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
TIMEOUT /t 10
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{ENTER}"
TIMEOUT /t 15
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{ENTER}
'HERE IS WHERE YOU MIGHT WANT TO CHANGE! CHANGE ACCORDINGLY TO YOUR NEEDS!
TIMEOUT /t 2
%SENDKEYS% "{ENTER}"
TIMEOUT /t 1
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{TAB}"
%SENDKEYS% "{ENTER}"
TIMEOUT /t 5
%SENDKEYS% "^{e}"

GOTO :EOF

@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0


