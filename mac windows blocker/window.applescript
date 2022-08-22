set tmpList to {}
set windowTitles to {}
set visibleProcesses to {}
set visibleProcessesWithWindows to {}
set processNamesAndWindowTitles to {}
set processNamesAndWindowTitlesLists to {}

tell application "System Events"
	set visibleProcesses to name of (every process whose visible is true)
	repeat with processName in visibleProcesses
		if (count windows of process processName) is not 0 then
			set end of visibleProcessesWithWindows to processName
		end if
	end repeat
	repeat with processName in visibleProcessesWithWindows
		set end of tmpList to (processName as list)
		set end of processNamesAndWindowTitles to tmpList
		set tmpList to {}
	end repeat
end tell

repeat with aItem in processNamesAndWindowTitles
	set end of processNamesAndWindowTitlesLists to item 1 of aItem
end repeat


return processNamesAndWindowTitlesLists