@echo off

if [%1]==[] goto usage
aria2c --conf-path="./aria2.conf" "%~1"
goto :eof

:usage
@echo Usage: %0 "[<URI>|<MAGNET>|<TORRENT_FILE>|<METALINK_FILE>]"
@echo You can use it like this:
@echo     > dl.bat "https://releases.ubuntu.com/20.04/ubuntu-20.04.3-desktop-amd64.iso.torrent"
exit /B 1
