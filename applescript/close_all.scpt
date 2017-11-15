tell application "System Events"
	set listOfProcesses to (name of every process where background only is false)
end tell
repeat with processName in listOfProcesses
  do shell script "Killall " & quoted form of processName
end repeat
