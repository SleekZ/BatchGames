@echo off
color 0D
title Guessing Game
:verytop
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=hax
set difficulty=20
set var3=y
set update=update
echo -------------------------------------------------
echo Version 1.2, by luke miller (type update to check for new releases)
echo.
echo Welcome to the Guessing Game! 
echo. 
echo Try and Guess my Number!
echo.
echo You have %difficulty% guesses before i turn off your pc :)
echo.
echo -------------------------------------------------
echo. 
color 0E
:top
echo. 
set /p guess=
echo. 
set /a guessnum=%guessnum% +1
if %guess% GTR %answer% ECHO Lower! (guess number %guessnum%)
if %guess% LSS %answer% ECHO Higher! (guess number %guessnum%)
if %guessnum% GTR %difficulty% GOTO FAIL
if %guess%==%answer% GOTO EQUAL
if %guess%==%update% ECHO update at https://github.com/sleepercreeper1/Guess/
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto top
:equal
color 0D
echo Congratulations, You guessed right!!! 
echo. 
echo It took you %guessnum% guesses. 
echo. 
if %guessnum% GTR %difficulty% GOTO FAIL
echo good job! 
goto end
:fail
echo sadly you took too many tries, i will now shut down your pc :)
@echo off
Shutdown.exe -s -t 10 /c "Guess gooderer"
cls
pause
:end
echo want to play again? y/n
set /p again=
if %again%==%var3% GOTO VERYTOP  