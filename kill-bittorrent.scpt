# Jason Campipsi
# name: kill-bittorrent
# version: v0.1
# date: 11.6.11
# Realsed under the GPL 3
# Purpose: version 7.2.2 Mac build of bittorrent does not always close, and sort of hangs infinitely instead of shutting off when you tell it. So this program is meant to kill the zombie program

#set name to "bittorrent"
try
	do shell script "/bin/bash; ps aux |grep -i bittorrent |grep -v color | cut -d \" \" -f 9 | xargs kill -9 2>/dev/null && 1>/dev/null"
	
end try

