tell application "System Events"
	set listOfProcesses to every process
	set allProcess to {}
	
	repeat with processItem in listOfProcesses
		set procname to name of processItem as string
		copy procname to end of allProcess
	end repeat
	
	return allProcess
end tell
