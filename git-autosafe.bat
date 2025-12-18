@echo off
:: Use the current folder as the working directory
cd /d "%~dp0"

echo Adding files...
git add .

:: Commit with the current date and time as the message
:: %date% and %time% automatically pull your system's current clock values
echo Committing...
git commit -m "Auto-update: %date% %time%"

echo Pushing to GitHub...
git push

echo Done!
:: "pause" keeps the window open so you can see if there were any errors
pause