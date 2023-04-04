@echo off
color 17
title MYP Language Acquisition conceptual understanding generator by Inquiring Practitioner (2023)
:loop1
cls

REM Get current folder path
set "folder=%~dp0"

REM Read lookup table
set "lookup=%folder%\lookup.txt"

REM Display Key Concepts and Get User Input
echo Please select a key concept:
echo 1. Communication
echo 2. Connections
echo 3. Creativity
echo 4. Culture
set /p kc=Type the number and press Enter: 

REM Set kcname variable based on the selected key concept
if "%kc%"=="1" (
  set "file=%folder%\Communication.txt"
  set "kcname=Communication"
) else if "%kc%"=="2" (
  set "file=%folder%\Connections.txt"
  set "kcname=Connections"
) else if "%kc%"=="3" (
  set "file=%folder%\Creativity.txt"
  set "kcname=Creativity"
) else if "%kc%"=="4" (
  set "file=%folder%\Culture.txt"
  set "kcname=Culture"
) else (
  echo. Only use numbers 1-4, BAZINGA!
    pause
    goto loop1
    cls
)

echo.

REM Display the selected key concept
echo You selected "%kcname%".
:loop1b
REM Display Related Concepts and Get User Input
:select_rc1
echo.
echo Please select the first related concept:
echo. 
echo 1. Argument
echo 2. Audience
echo 3. Bias
echo 4. Context
echo 5. Conventions
echo 6. Empathy
echo 7. Form
echo 8. Function
echo 9. Idiom
echo 10. Inference
echo 11. Meaning
echo 12. Message
echo 13. Patterns
echo 14. POV
echo 15. Purpose
echo 16. Structure
echo 17. Stylistic_choices
echo 18. Theme
echo 19. Voice
echo 20. Word_choice
echo.
set /p rc1=Type the number and press Enter:
if "%rc1%"=="1" (
    set rcname1=Argument
) else if "%rc1%"=="2" (
    set rcname1=Audience
) else if "%rc1%"=="3" (
    set rcname1=Bias
) else if "%rc1%"=="4" (
    set rcname1=Context
) else if "%rc1%"=="5" (
    set rcname1=Conventions
) else if "%rc1%"=="6" (
    set rcname1=Empathy
) else if "%rc1%"=="7" (
    set rcname1=Form
) else if "%rc1%"=="8" (
    set rcname1=Function
) else if "%rc1%"=="9" (
    set rcname1=Idiom
) else if "%rc1%"=="10" (
    set rcname1=Inference
) else if "%rc1%"=="11" (
    set rcname1=Meaning
) else if "%rc1%"=="12" (
    set rcname1=Message
) else if "%rc1%"=="13" (
    set rcname1=Patterns
) else if "%rc1%"=="14" (
    set rcname1=POV
) else if "%rc1%"=="15" (
    set rcname1=Purpose
) else if "%rc1%"=="16" (
    set rcname1=Structure
) else if "%rc1%"=="17" (
    set rcname1=Stylistic_choices
) else if "%rc1%"=="18" (
    set rcname1=Theme
) else if "%rc1%"=="19" (
    set rcname1=Voice
) else if "%rc1%"=="20" (
    set rcname1=Word_choice
) else (
    echo Only use numbers 1-20 to select a concept. 
    pause
    goto loop1b
)

echo You chose %rcname1%.

:loop2

set available_rcs=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
echo. 
set /p rc2="Choose a different second related concept. Type the number and press Enter: "

echo.

if "%rc2%"=="%rc1%" (

echo.

    echo You must read the instructions correctly. You need to select two different related concepts. Please try again!
echo.
    goto loop2
    cls
)

set rcname2=
for %%i in (%available_rcs%) do (
if not "%%i"=="%rc1%" if not "%%i"=="%rc2%" (
set available_rcs=!available_rcs! %%i
if defined rcname2 goto :break
)
)
:break
if not defined rcname2 (
    if "%rc2%"=="1" (
        set rcname2=Argument
    ) else if "%rc2%"=="2" (
        set rcname2=Audience
    ) else if "%rc2%"=="3" (
        set rcname2=Bias
    ) else if "%rc2%"=="4" (
        set rcname2=Context
    ) else if "%rc2%"=="5" (
        set rcname2=Conventions
    ) else if "%rc2%"=="6" (
        set rcname2=Empathy
    ) else if "%rc2%"=="7" (
        set rcname2=Form
    ) else if "%rc2%"=="8" (
        set rcname2=Function
    ) else if "%rc2%"=="9" (
        set rcname2=Idiom
    ) else if "%rc2%"=="10" (
        set rcname2=Inference
    ) else if "%rc2%"=="11" (
        set rcname2=Meaning
    ) else if "%rc2%"=="12" (
        set rcname2=Message
    ) else if "%rc2%"=="13" (
        set rcname2=Patterns
    ) else if "%rc2%"=="14" (
        set rcname2=POV
    ) else if "%rc2%"=="15" (
        set rcname2=Purpose
    ) else if "%rc2%"=="16" (
        set rcname2=Structure
    ) else if "%rc2%"=="17" (
        set rcname2=Stylistic_choices
    ) else if "%rc2%"=="18" (
        set rcname2=Theme
    ) else if "%rc2%"=="19" (
        set rcname2=Voice
    ) else if "%rc2%"=="20" (
        set rcname2=Word_choice
    ) else (
        echo Hmm, two different concepts using the numbers 1-20. 
        pause
        goto loop2
    )
)

echo. You chose the Key Concept of "%kcname%".

echo.

REM read the key concept file and find the matching sentence

set "match=^%rcname1% %rcname2% .*"
for /f "delims=" %%a in ('findstr /i /r /c:"%match%" "%file%"') do (
set "sentence=%%a"
goto found
)
goto notfound

:found
echo %sentence%

pause
goto loop1
