@echo off 
:: This script is a shortcut for me to create a project folder for small PHP projects thta I work on.
:: It creates a project directory with my boiletplate layout and adds the PHP server file in the root.
:: The PHP server file listens on port 1234 and serves from /public_html

:: set the project name
set project_name=%1
:: if no name was specified create a random name for the project
IF "%~1" == "" set project_name=project-%RANDOM%
:: set the path to the desktop
set path_to_desktop=C:\Users\%USERNAME%\Desktop
:: create the project folder on the desktop
cd %path_to_desktop%
md %project_name%
:: create the project directories
cd %project_name%
md app
md public_html
:: create the PHP server script in the projects dir
echo cd public_html >server.bat
echo php -S localhost:1234 >>server.bat
:: create the sub directories on public_html
cd public_html
md img
:: create the project files in public_html
echo ^<?php >header.php
echo ?^> >>header.php
echo ^<?php include 'header.php'; ?^> >index.php
echo ^<?php include 'footer.php'; ?^> >>index.php
echo ^<?php >footer.php
echo ?^> >>footer.php
:: create the server init file in the app folder
cd %path_to_desktop%/%project_name%/app
echo ^<?php >init.php
echo ?^> >>init.php
:: exit the console
EXIT
