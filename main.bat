@echo off
title MULTITOOL - Cyber
chcp 65001 >nul
cls
color 0a

:login
title Verification
echo      ---------------------------------------------- Welcome to MULTI_TOOL -----------------------------------------
echo. 
echo.

echo [91m                  █████  ███    ██ ██    ██     ██████   ██████  ██    ██ ██████  ████████ ███████  ██████  
echo [91m                 ██   ██ ████   ██  ██  ██      ██   ██ ██    ██ ██    ██ ██   ██    ██    ██            ██ 
echo [93m                 ███████ ██ ██  ██   ████       ██   ██ ██    ██ ██    ██ ██████     ██    ███████    ▄███  
echo [93m                 ██   ██ ██  ██ ██    ██        ██   ██ ██    ██ ██    ██ ██   ██    ██         ██    ▀▀    
echo [91m                 ██   ██ ██   ████    ██        ██████   ██████   ██████  ██████     ██    ███████    ██    
echo.
echo.

set /p user=[+]   Username: 
echo.
set /p pass=[+]   Password: 
cls

echo Logging in with [%user%]
title Checking.
timeout 1 >nul
title Checking.. 
timeout 1 >nul
title Checking...
timeout 1 >nul
title Checking.
timeout 1 >nul
title Checking.. 
timeout 1 >nul

if "%user%" == "batch" if "%pass%" == "batch" goto Main
if "%user%" == "root" if "%pass%" == "root" goto Main

:: If the login fails
echo Incorrect!
timeout 1 >nul

:retry

set /p menu="Wanna Try again? (Y/N): "
cls
if /i "%menu%"=="Y" goto login
if /i "%menu%"=="N" goto quit
echo Invalid input! Please enter Y or N.
timeout 2 >nul
goto retry
:quit
timeout 1 >nul
title Quitting.
timeout 1 >nul
echo The program is now terminating.
timeout 1 >nul
title Quitting..
echo.
timeout 1 >nul
echo Please wait while the process is completed.
timeout 1 >nul
title Quitting...
timeout 2 >nul
echo.
echo Terminated Succesfully!!!
timeout 1 >nul
goto exit


:Main
cls
color 0a
title Welcome [%user%] : 1
echo.

    echo [91m                   ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     ███████╗
    echo [91m                   ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
    echo [93m                   ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     ███████╗
    echo [93m                   ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     ╚════██║
    echo [91m                   ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗███████║
    echo [92m                   ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
    echo [92m                                                                                      

echo.
echo [91m                                ---------------CHOOSE THE TOOLS TO PROCEED-----------------
echo [91m                                           --------------PAGE ONE-----------------
echo.
echo [92m                                 ╔═══════════════════════════════════════════════════════════╗
echo [92m                                 ║        [1] PuTTy          [6] DnsPortPingSpeed            ║
echo [92m                                 ║        [2] IP Pinger      [7]                             ║
echo [92m                                 ║        [3]                                                ║
echo [92m                                 ║        [4] BAT TO EXE                                     ║
echo [92m                                 ║        [5] IP LookUp                                      ║
echo [92m                                 ║                                                           ║
echo [92m                                 ║                 [99] Credits        Next Page: [Next]     ║
echo [92m                                 ╚═══════════════════════════════════════════════════════════╝
echo.
set /p picks=[%user%] : 

if %picks% == 1 goto putty
if %picks% == 2 goto ippinger
if %picks% == 4 goto bat2exe
if %picks% == 5 goto iplookup
if %picks% == 6 goto dnsportipping
if %picks% == Next goto Main2
if %picks% == next goto Main2
if %picks% == 99 goto credits

echo     - Feature Not Available Yet!
timeout 2 >nul
echo.
echo Resetting...
timeout 2 >nul
goto Main


:Main2
cls
color a
title Welcome [%user%] : 2
echo.
    echo [91m                   ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     ███████╗
    echo [91m                   ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
    echo [93m                   ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     ███████╗
    echo [93m                   ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     ╚════██║
    echo [91m                   ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗███████║
    echo [92m                   ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
    echo [92m                                                                                           
echo.
echo [91m                                ---------------CHOOSE THE TOOLS TO PROCEED-----------------
echo [91m                                           --------------PAGE TWO-----------------
echo.
echo [92m                      ╔══════════════════════════════════════════════════════════════════════════════╗
echo [92m                      ║ [1] Lock/Unlock file     [6]                     [11] ViewAllPc in Network   ║
echo [92m                      ║ [2]                      [7]                     [12]                        ║
echo [92m                      ║ [3]                      [8]                     [13] All NET CMD            ║
echo [92m                      ║ [4]                      [9] Know WIFI Pass      [14] System Info            ║
echo [92m                      ║ [5] Calculator           [10] Rename File        [15]                        ║
echo [92m                      ║                                                                              ║
echo [92m                      ║ Back page: [Back]          [99] Credits                 Next Page: [Next]    ║
echo [92m                      ╚══════════════════════════════════════════════════════════════════════════════╝
echo.
set /p pick=[%user%]: 
if %pick% == 1 goto lockunlock
if %pick% == 5 goto calculator
if %pick% == 9 goto knowwifi
if %pick% == 10 goto renfile
if %pick% == 11 goto allpcnetwork
if %pick% == 13 goto allnetcmd
if %pick% == 14 goto systemin
if %pick% == 99 goto credits
if %pick% == back goto Main
if %pick% == Back goto Main
if %pick% == Next goto Main3
if %pick% == next goto Main3

echo     - Feature Not Available Yet!
timeout 2 >nul
echo.
echo Resetting...
timeout 2 >nul
goto Main2


:Main3
cls
color a
title Welcome [%user%] : 3
echo.
    echo [91m                   ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     ███████╗
    echo [91m                   ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
    echo [93m                   ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     ███████╗
    echo [93m                   ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     ╚════██║
    echo [91m                   ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗███████║
    echo [92m                   ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
    echo [92m                                                                                           
echo.
echo [91m                                ---------------CHOOSE THE TOOLS TO PROCEED-----------------
echo [91m                                           --------------PAGE THREE-----------------
echo.
echo [92m                      ╔═══════════════════════════════════════════════════════════════════════════╗
echo [92m                      ║         [1] Window Version       [6] PC Setting                           ║
echo [92m                      ║         [2]                      [7]                                      ║
echo [92m                      ║         [3] Mode WMIC            [8]                                      ║
echo [92m                      ║         [4] Task List                                                     ║
echo [92m                      ║         [5] Change Time                                                   ║
echo [92m                      ║                                                                           ║
echo [92m                      ║ Back page: [Back]           [99] Credits                                  ║
echo [92m                      ╚═══════════════════════════════════════════════════════════════════════════╝
echo.
    set /p pickz=[%user%]: 
    if %pickz% == 1 goto winve
    if %pickz% == 3 goto modewmic
    if %pickz% == 4 goto tasklists
    if %pickz% == 5 goto timechanger
    if %pickz% == 6 goto setpc
    if %pickz% == 99 goto credits
    if %pickz% == back goto Main2
    if %pickz% == Back goto Main2

    echo     - Feature Not Available Yet!
    timeout 2 >nul
    echo.
    echo Resetting...
    timeout 2 >nul
    goto Main3


:setpc
    cls
    timeout 1 >nul
    echo Opening Settings...
    timeout 1 >nul
    start ms-settings:
    echo.
    pause
    goto Main3

:timechanger
    cls
    echo Current System Time: %TIME%
    timeout 2 >nul

    set /p menu="Do you Want to Change Date and Time? (Y/N): "

    if /i "%menu%"=="Y" goto change
    if /i "%menu%"=="N" goto Main3
    echo Invalid input! Please enter Y or N.

    timeout 2 >nul

:change
    echo.
    timeout 1 >nul
    echo Opening Date and Time Settings...
    timeout 2 >nul
    start ms-settings:dateandtime
    echo.
    pause
    goto Main3


:tasklists
    cls
    timeout 1 >nul
    echo Opening task list in a new window...
    timeout 1 >nul
    start cmd /c "tasklist /fi "memusage ge 100000" && pause"
    echo.
    pause
    goto Main3



:modewmic
    cls
    echo Choose the information you want to display:
    echo.
    echo 1. CPU Information
    echo 2. Memory Information
    echo 3. Disk Information
    echo 4. OS Information
    echo 5. Network Adapter Information
    echo 6. BIOS Information
    echo 7. Installed Software
    echo 8. System Boot Time
    echo 9. Process List
    echo 10. System Uptime
    echo.
    echo Type "all" to show all information or choose the numbers (e.g., 1 2 4).
    set /p selection=Enter your selection: 

    if "%selection%"=="all" (
        call :show_all_info
    ) else (
        for %%a in (%selection%) do (
            call :show_info %%a
        )
    )

    goto :eof

:show_info
    if "%1"=="1" (
        echo ===== CPU Information =====
        wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
        echo.
    )
    if "%1"=="2" (
        echo ===== Memory Information =====
        wmic memorychip get capacity, devicelocator, manufacturer, partnumber, speed
        echo.
    )
    if "%1"=="3" (
        echo ===== Disk Information =====
        wmic diskdrive get model, size, serialnumber
        echo.
    )
    if "%1"=="4" (
        echo ===== OS Information =====
        wmic os get caption, architecture, version
        echo.
    )
    if "%1"=="5" (
        echo ===== Network Adapter Information =====
        wmic nic get caption, macaddress, speed
        echo.
    )
    if "%1"=="6" (
        echo ===== BIOS Information =====
        wmic bios get manufacturer, smbiosbiosversion, releasedate
        echo.
    )
    if "%1"=="7" (
        echo ===== Installed Software =====
        wmic product get name, version
        echo.
    )
    if "%1"=="8" (
        echo ===== System Boot Time =====
        wmic os get lastbootuptime
        echo.
    )
    if "%1"=="9" (
        echo ===== Process List =====
        tasklist
        echo.
    )
    if "%1"=="10" (
        echo ===== System Uptime =====
        wmic os get lastbootuptime
        echo.
    )

    goto :eof

:show_all_info
    call :show_info 1
    call :show_info 2
    call :show_info 3
    call :show_info 4
    call :show_info 5
    call :show_info 6
    call :show_info 7
    call :show_info 8
    call :show_info 9
    call :show_info 10
    pause
    goto :eof

    goto Main3



:winve
    timeout 2 >nul
    echo =====Displaying Windows Version=====
    timeout 2 >nul
    winver
    pause
    goto Main3


:systemin
    cls
    timeout 1 >nul
    echo =====Displaying the System Information=====
    timeout 2 >nul
    systeminfo
    pause
    goto Main2


:allnetcmd
    cls
    echo Here is a list of NET commands:
    echo.
    echo [1] netstat - Displays active connections and listening ports
    echo [2] net view - Lists computers in your network
    echo [3] net use - Connects or disconnects from shared resources
    echo [4] net user - Displays or modifies user accounts
    echo [5] net share - Manages shared resources
    echo [6] net start - Starts a service
    echo [7] net stop - Stops a service
    echo [8] Exit to Main Menu
    echo.
    
    set /p choice=Enter your choice (1-7 or 8 to exit): 
    echo.
    echo Connecting to Server....
    echo.
    timeout 1 >nul
    if "%choice%"=="1" (
        netstat
    ) else if "%choice%"=="2" (
        net view
    ) else if "%choice%"=="3" (
        net use
    ) else if "%choice%"=="4" (
        net user
    ) else if "%choice%"=="5" (
        net share
    ) else if "%choice%"=="6" (
        net start
    ) else if "%choice%"=="7" (
        net stop
    ) else if "%choice%"=="8" (
        goto Main2
    ) else (
        echo Invalid choice, please try again.
    )
    
    pause
    goto allnetcmd




:allpcnetwork
    title MULTI TOOLS
    echo.
    echo =====Provide the domain name to fetch the connected machines:=====
    echo.
    set /p networkviewinput=[+] :
    echo.

    if "%networkviewinput%"=="" (
        echo You did not enter a domain name.
        pause
        goto Main2
    )

    net view \\%networkviewinput% 2>nul
    if errorlevel 1 (
        echo Could not find the domain or network.
    ) else (
        echo Domain information retrieved successfully.
    )
    echo.
    pause
    goto Main2

:renfile
cls
echo [+] Rename File [+]
echo.

:: Use PowerShell to open a file picker dialog
for /f "delims=" %%f in ('powershell -command "Add-Type -AssemblyName 'System.Windows.Forms'; $file = (New-Object Windows.Forms.OpenFileDialog); if ($file.ShowDialog() -eq 'OK') { $file.FileName }"') do set "reliantfilerenamerpath=%%f"

:: Check if user selected a file
if "%reliantfilerenamerpath%"=="" (
    echo No file selected. Returning to the main menu.
    timeout /t 3 /nobreak >nul
    goto Main2
)

:: Display selected file path
echo You have selected the file: %reliantfilerenamerpath%
echo.

:: Ask for new file name
echo =====Enter the new File name (with extension):=====
set /p "filerenameinput=[+] : "

:: Rename the file
ren "%reliantfilerenamerpath%" "%filerenameinput%"

cls
echo.
echo File renamed successfully! Returning to the main menu...
timeout /t 3 /nobreak >nul
goto Main2







:calculator
TITLE Calculator
cls
set prevmenu=12
title Calculator
echo ---------------------------
echo =====SIMPLE CALCULATOR=====
echo ---------------------------
echo.
echo 1. Use Web Calculator (github project)
echo 2. Use Built-in Calculator
echo 0. Back to Main Menu
echo ---------------------------
set /p choice=Choose an option (1-2, 0 to exit): 

if "%choice%"=="0" goto Main2
if "%choice%"=="1" goto webcalc
if "%choice%"=="2" goto builtincalc

:builtincalc
cls
echo ---------------------------
echo Built-in Calculator
echo.
echo Opening Windows Calculator...
echo.
timeout 2 >nul

:: Open Windows Calculator application
start calc.exe

:: After the user closes the Windows Calculator, return to the calculator menu
goto calculator

:webcalc
cls
echo Opening Web Calculator...
timeout 2 >nul
start https://shaswatacharya.github.io/Calculator_Using_Js/
echo Returning to MAIN MENU(in 4s)...
timeout 4 >nul
goto Main2






:open_online_generator
cls

echo =======================================
echo     Opening the QR Code generator website! 
echo =======================================
echo Please wait...


echo.
echo Loading... Please wait for a moment.
timeout /t 2 >nul

cls
echo =======================================
echo     Opening the QR Code generator website!
echo =======================================
echo Website opening in your default browser...
timeout /t 2 >nul

:: Link of the Qr_generate website ..
start https://me-qr.com/qr-code-generator/qr


cls
echo     ======================================================================
echo     The QR Code generator website has been opened in your default browser.
echo     ======================================================================
pause
goto Main2













:lockunlock
title File Locker with Password Protection

set password=root

:menu
cls
echo =======================
echo [1] Lock/Hide a File
echo [2] Lock/Hide a Folder
echo [3] Unlock File/Folder
echo [4] Exit
echo =======================
echo.
set /p choice=Select an option: 

if "%choice%"=="1" goto lockOrHideFile
if "%choice%"=="2" goto lockOrHideFolder
if "%choice%"=="3" goto unlock
if "%choice%"=="4" goto Main2
goto menu

:lockOrHideFile
cls
echo =======================
echo [1] Lock/Hide a File
echo =======================
set /p lockChoice=Select an option: 

if "%lockChoice%"=="1" goto lockHideFile
goto menu

:lockHideFile
echo =====================================================================================
echo Please select the file to lock or hide. A PowerShell window will open in the C Drive.
echo =====================================================================================
for /f "delims=" %%i in ('powershell -Command "Add-Type -AssemblyName System.Windows.Forms; $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog; $OpenFileDialog.InitialDirectory = 'C:\'; $OpenFileDialog.Filter = 'All files (*.*)|*.*'; if($OpenFileDialog.ShowDialog() -eq 'OK') {$OpenFileDialog.FileName} else {''}"') do set filePath=%%i

if "%filePath%"=="" (
    echo No file selected! Returning to menu.
    pause
    goto menu
)

attrib +h +s "%filePath%"
cls
echo File location: "%filePath%"
echo "%filePath%" is locked/hidden successfully.
timeout 2

:copyPathFile
echo.
echo Note: Save the File Path as its needed to unlock file later else file is gone!
timeout 2 >nul
echo.
set /p copyChoice=Do you want to copy the file path for unlocking (Y/N)? 
if /i "%copyChoice%"=="Y" (
    echo | set /p="%filePath%" | clip
    echo File path copied to clipboard!
    timeout 2
    goto menu
) else if /i "%copyChoice%"=="N" (
    goto menu
) else (
    echo Invalid choice. Please enter Y or N.
    goto copyPathFile
)

:lockOrHideFolder
    echo ===================================================================
    echo Please select the folder to lock. A folder picker window will open.
    echo ===================================================================
    for /f "delims=" %%i in ('powershell -Command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); $folderPicker = New-Object System.Windows.Forms.FolderBrowserDialog; if ($folderPicker.ShowDialog() -eq 'OK') {$folderPicker.SelectedPath} else {''}"') do set folderPath=%%i

    if "%folderPath%"=="" (
        echo No folder selected! Returning to menu.
        pause
        goto menu
    )

    attrib +h +s "%folderPath%"
    cls
    echo Folder location: "%folderPath%"
    echo "%folderPath%" is locked successfully.
    timeout 2

:copyPathFolder
echo.
echo Note: Save the Folder Path as its needed to unlock folder later else folder is gone!
timeout 2 >nul
echo.
set /p copyChoice=Do you want to copy the folder path for unlocking (Y/N)? 
if /i "%copyChoice%"=="Y" (
    echo | set /p="%folderPath%" | clip
    echo Folder path copied to clipboard!
    timeout 2
    goto menu
) else if /i "%copyChoice%"=="N" (
    goto menu
) else (
    echo Invalid choice. Please enter Y or N.
    goto copyPathFolder
)

:unlock
cls
echo ======================================
echo Please choose what you want to unlock:
echo ======================================
echo [1] Unlock a File
echo [2] Unlock a Folder
set /p unlockChoice=Select an option: 

if "%unlockChoice%"=="1" goto unlockFile
if "%unlockChoice%"=="2" goto unlockFolder
goto menu

:unlockFile
set /p input=Enter password to unlock: 
if not "%input%"=="%password%" (
    echo Incorrect password!
    pause
    goto menu
)
echo ================================================================
echo Please select the file to unlock. A PowerShell window will open.
echo ================================================================
for /f "delims=" %%i in ('powershell -Command "Add-Type -AssemblyName System.Windows.Forms; $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog; $OpenFileDialog.InitialDirectory = 'C:\'; $OpenFileDialog.Filter = 'All files (*.*)|*.*'; if($OpenFileDialog.ShowDialog() -eq 'OK') {$OpenFileDialog.FileName} else {''}"') do set filePath=%%i

if "%filePath%"=="" (
    echo No file selected! Returning to menu.
    pause
    goto menu
)

attrib -h -s "%filePath%"
echo File unlocked successfully!
echo File is located at: %filePath%
pause
goto menu

:unlockFolder
set /p input=Enter password to unlock: 
if not "%input%"=="%password%" (
    echo Incorrect password!
    pause
    goto menu
)

cls
echo ============================================
echo Please paste the full folder path to unlock:
echo ============================================
set /p folderPath=Enter the full folder path to unlock (e.g., C:\Users\YourName\Documents\MyFolder): 

rem Check if no folder path was entered
if "%folderPath%"=="" (
    echo No folder path entered! Returning to menu.
    pause
    goto menu
)

rem Check if the folder exists
if not exist "%folderPath%\" (
    echo Folder does not exist or the path is incorrect.
    pause
    goto menu
)

rem Remove hidden and system attributes to unlock the folder
attrib -h -s "%folderPath%"

cls
echo =============================
echo Folder unlocked successfully!
echo =============================
echo Folder is located at: %folderPath%
pause
goto menu


@REM :convcurr

:iplookup
title IP Lookup Tool
:menu1
cls
echo ================================
echo          IP Lookup Tool
echo ================================
echo [1] IP Geo Lookup
echo [2] Show My Public IP
echo [3] Exit
echo.
set /p ipchoice=Select an option: 

if "%ipchoice%"=="1" goto ip_geo_lookup
if "%ipchoice%"=="2" goto show_my_ip
if "%ipchoice%"=="3" goto Main
echo Invalid option. Try again.
pause
goto menu1

:ip_geo_lookup
cls
echo                                     ███████╗███╗   ██╗████████╗███████╗██████╗     ██╗██████╗ 
echo                                     ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗    ██║██╔══██╗
echo                                     █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝    ██║██████╔╝
echo                                     ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗    ██║██╔═══╝ 
echo                                     ███████╗██║ ╚████║   ██║   ███████╗██║  ██║    ██║██║     
echo                                     ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝
echo.
echo ==========================================================
echo. " 🌐 Enter the IP Address to Lookup 🌐 "
echo ----------------------------------------------------------
echo 🔹 Type 'back' to return to the main menu.
echo 🔹 Example IPs: 8.8.8.8 or 192.168.0.1
echo ----------------------------------------------------------
set /p ip= 🔍 Enter IP Address: 
if /i "%ip%"=="back" goto menu1

cls
echo Looking up IP: %ip%...
curl "https://ipinfo.io/%ip%/json" -o geolocation.json 2>nul
if %errorlevel% neq 0 (
    echo Error: Failed to fetch data. Please check your internet connection or the IP entered.
    pause
    goto ip_geo_lookup
)

cls
echo ==========================================================
echo Geolocation Information for: %ip%
echo ----------------------------------------------------------
type geolocation.json | more
echo ----------------------------------------------------------
del geolocation.json
pause
goto ip_geo_lookup

:show_my_ip
cls
echo Fetching your public IP address...
curl "https://api64.ipify.org" -o myip.txt 2>nul
if %errorlevel% neq 0 (
    echo Error: Unable to retrieve public IP. Please check your internet connection.
    pause
    goto menu1
)

set /p public_ip=<myip.txt
cls
echo ==========================================================
echo Your Public IP: %public_ip%
echo ----------------------------------------------------------
echo Press [C] to copy your public IP to the clipboard or any other key to return to the menu.
choice /c c /n /m ""
if errorlevel 1 echo %public_ip% | clip && echo Public IP copied to clipboard!
del myip.txt
pause
goto menu1



:ippinger
title IP Pinger Tool
cls
echo ===========================================================
echo               ██████╗ ██╗███╗   ██╗ ██████╗ 
echo               ██╔══██╗██║████╗  ██║██╔════╝ 
echo               ██████╔╝██║██╔██╗ ██║██║  ███╗
echo               ██╔═══╝ ██║██║╚██╗██║██║   ██║
echo               ██║     ██║██║ ╚████║╚██████╔╝
echo               ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
echo ===========================================================
echo.
echo ===================== Choose an Option =====================
echo [1] Enter IP/Domain manually
echo [2] Choose a common IP/Domain to ping
echo [3] EXIT
echo ===========================================================
set /p option=Select an option [1/3]: 

if "%option%"=="1" goto manualInput
if "%option%"=="2" goto commonIPs
if "%option%"=="3" goto Main
echo Invalid choice. Try again.
pause
goto ippinger

:manualInput
cls
echo ===========================================================
echo                  Enter the IP or Domain you want to ping:
echo ===========================================================
set /p ipAddress=Enter IP or Domain: 

:pingLoop
cls
echo ===========================================================
echo                 IP Pinger Tool
echo ===========================================================
echo.
echo Pinging %ipAddress%... Press CTRL+C to stop.
echo.
ping %ipAddress%
pause
goto ippinger

:commonIPs
cls
echo ===========================================================
echo                 Choose a Common IP/Domain
echo ===========================================================
echo [1] Google (google.com)
echo [2] YouTube (youtube.com)
echo [3] Cloudflare DNS (1.1.1.1)
echo [4] OpenDNS (208.67.222.222)
echo [5] Facebook (facebook.com)
echo [6] Amazon (amazon.com)
echo [7] Custom IP/Domain
echo ===========================================================
set /p commonOption=Select an option [1-7]: 

if "%commonOption%"=="1" (
    set ipAddress=google.com
) else if "%commonOption%"=="2" (
    set ipAddress=youtube.com
) else if "%commonOption%"=="3" (
    set ipAddress=1.1.1.1
) else if "%commonOption%"=="4" (
    set ipAddress=208.67.222.222
) else if "%commonOption%"=="5" (
    set ipAddress=facebook.com
) else if "%commonOption%"=="6" (
    set ipAddress=amazon.com
) else if "%commonOption%"=="7" (
    goto manualInput
) else (
    echo Invalid option. Try again.
    pause
    goto commonIPs
)

echo Selected IP/Domain: %ipAddress%
pause
goto pingLoopCommon

:pingLoopCommon
cls
echo ===========================================================
echo                 IP Pinger Tool
echo ===========================================================
echo.
echo Pinging %ipAddress%... Press CTRL+C to stop.
echo.
ping %ipAddress%
pause
goto ippinger



:knowwifi
openfiles >nul 2>nul
if '%errorlevel%' NEQ '0' (
    echo ============================================================
    echo This script needs to be run as Administrator.
    echo Please click "Yes" when prompted for elevated privileges.
    echo ============================================================
    :: Re run as admin
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs" >nul

    echo Give the administrative access else it wont work
    pause
    goto Main2
) 

title WiFi Password Viewer
cls

echo              =====================================================================
echo                 ██╗    ██╗██╗███████╗██╗      ██████╗  █████╗ ███████╗███████╗
echo                 ██║    ██║██║██╔════╝██║      ██╔══██╗██╔══██╗██╔════╝██╔════╝
echo                 ██║ █╗ ██║██║█████╗  ██║█████╗██████╔╝███████║███████╗███████╗
echo                 ██║███╗██║██║██╔══╝  ██║╚════╝██╔═══╝ ██╔══██║╚════██║╚════██║
echo                 ╚███╔███╔╝██║██║     ██║      ██║     ██║  ██║███████║███████║
echo                  ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝      ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝
echo              =====================================================================
echo.
echo               WiFi Password Viewer Menu
echo ===========================================================
echo [1] Show all Wi-Fi profiles and passwords
echo [2] View specific Wi-Fi profile password
echo [3] Exit
echo ===========================================================
set /p option=Choose an option [1/2/3]: 

if "%option%"=="1" goto showAllWiFi
if "%option%"=="2" goto showTargetWiFi
if "%option%"=="3" goto Main2
echo Invalid choice. Try again.
pause
goto knowwifi

:showAllWiFi
cls
echo ===========================================================
echo         All Connected Wi-Fi Profiles and Passwords
echo ===========================================================
echo.

:: Enable delayed variable expansion
setlocal enabledelayedexpansion

:: Check if netsh command returns profiles correctly
for /f "tokens=1,* delims=:" %%a in ('netsh wlan show profiles') do (
    if "%%a"=="    All User Profile" (
        set profile=%%b
        set profile=!profile:~1!  :: Remove leading space
        echo Checking Wi-Fi profile: !profile!
        call :getPassword
    )
)

:: If no profiles are found
if "%profile%"=="" (
    echo No Wi-Fi profiles found. Ensure you are connected to a Wi-Fi network and have administrative rights.
)

:: End of loop, go back to the main menu
echo.
pause
goto knowwifi

:getPassword
for /f "tokens=1,* delims=:" %%a in ('netsh wlan show profile "!profile!" key=clear') do (
    if "%%a"=="    Key Content" (
        echo [Wi-Fi Name] !profile! - [Password] %%b
    )
)
goto :eof

:showTargetWiFi
cls
echo ===========================================================
echo        Enter the Target Wi-Fi Profile to View Password
echo ===========================================================
set /p targets=Enter Wi-Fi Profile: 
netsh wlan show profile "%targets%" key=clear | findstr /R /C:"Key Content" 
echo.
pause
goto knowwifi





:dnsportipping
cls
title Network Utilities Suite
:menu3
cls
echo ================================
echo    Network Utilities Suite
echo ================================
echo [1] DNS Lookup Tool
echo [2] Port Scanner
echo [3] Traceroute Tool
echo [4] Ping Multiple Hosts
echo [5] Network Speed Test
echo [6] Exit
echo.
set /p choice=Select an option: 

if "%choice%"=="1" goto dns_lookup
if "%choice%"=="2" goto port_scanner
if "%choice%"=="3" goto traceroute
if "%choice%"=="4" goto ping_multiple
if "%choice%"=="5" goto speed_test
if "%choice%"=="6" goto Main
echo Invalid option. Try again.
pause
goto menu3

:dns_lookup
cls
echo ================================
echo         DNS Lookup Tool
echo ================================
echo [1] Lookup DNS for a Domain
echo [2] Back to Main Menu
echo.
set /p dnschoice=Select an option: 

if "%dnschoice%"=="1" goto lookup_dns
if "%dnschoice%"=="2" goto menu3
echo Invalid option. Try again.
pause
goto dns_lookup

:lookup_dns
cls
echo ===========================================================
echo         DNS Lookup: Enter Domain to Lookup
echo -----------------------------------------------------------
set /p domain= Enter Domain (e.g., google.com): 
nslookup %domain%
pause
goto dns_lookup

:port_scanner
cls
echo ================================
echo         Port Scanner
echo ================================
echo [1] Scan Ports
echo [2] Back to Main Menu
echo.
set /p portchoice=Select an option: 

if "%portchoice%"=="1" goto scan_ports
if "%portchoice%"=="2" goto menu3
echo Invalid option. Try again.
pause
goto port_scanner

:scan_ports
cls
echo ===========================================================
echo      Port Scanner: Enter IP/Domain and Port Range
echo -----------------------------------------------------------
set /p ipaddress= Enter IP Address or Domain: 
set /p portstart= Enter Start Port: 
set /p portend= Enter End Port: 

for /l %%p in (%portstart%,1,%portend%) do (
    echo Testing port %%p...
    powershell -Command "Test-NetConnection -ComputerName %ipaddress% -Port %%p"
)

pause
goto port_scanner


:traceroute
cls
echo ================================
echo         Traceroute Tool
echo ================================
echo [1] Perform Traceroute
echo [2] Back to Main Menu
echo.
set /p traceroutechoice=Select an option: 

if "%traceroutechoice%"=="1" goto perform_traceroute
if "%traceroutechoice%"=="2" goto menu3
echo Invalid option. Try again.
pause
goto traceroute

:perform_traceroute
title TraceRouteUtility
cls
echo ===========================================
echo              TRACEROUTE UTILITY           
echo ===========================================
set /p domain=Enter domain or IP: 
tracert %domain%
if %errorlevel% neq 0 (
    echo Error: Unable to complete traceroute.
)
pause
goto traceroute


:ping_multiple
cls
echo ================================
echo        Ping Multiple Hosts
echo ================================
echo [1] Ping Hosts
echo [2] Back to Main Menu
echo.
set /p pingchoice=Select an option: 

if "%pingchoice%"=="1" goto ping_hosts
if "%pingchoice%"=="2" goto menu3
echo Invalid option. Try again.
pause
goto ping_multiple

:ping_hosts
cls
echo ===========================================================
echo      Ping Multiple Hosts: Enter IP/Domain (comma separated)
echo -----------------------------------------------------------
set /p hosts= Enter Hosts (e.g., 8.8.8.8,google.com): 
for %%h in (%hosts%) do (
    echo Pinging %%h...
    ping %%h
)
pause
goto ping_multiple

:speed_test
cls
echo ================================
echo       Network Speed Test
echo ================================
echo [1] Run Speed Test
echo [2] Back to Main Menu
echo.
set /p speedchoice=Select an option: 

if "%speedchoice%"=="1" goto run_speed_test
if "%speedchoice%"=="2" goto menu3
echo Invalid option. Try again.
pause
goto speed_test

:run_speed_test
cls
echo ===========================================================
echo         Running Speed Test... Please Wait...
echo -----------------------------------------------------------
echo.
echo Python should be installed in this system.
echo If not then redirecting to python download page...

curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python
pause
goto speed_test





:bat2exe
cls

echo [91m                            ██████╗  █████╗ ████████╗   ██████╗       ███████╗██╗  ██╗███████╗
echo [92m                            ██╔══██╗██╔══██╗╚══██╔══╝   ╚════██╗      ██╔════╝╚██╗██╔╝██╔════╝
echo [93m                            ██████╔╝███████║   ██║█████╗ █████╔╝█████╗█████╗   ╚███╔╝ █████╗  
echo [94m                            ██╔══██╗██╔══██║   ██║╚════╝██╔═══╝ ╚════╝██╔══╝   ██╔██╗ ██╔══╝  
echo [95m                            ██████╔╝██║  ██║   ██║      ███████╗      ███████╗██╔╝ ██╗███████╗
echo [96m                            ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚══════╝      ╚══════╝╚═╝  ╚═╝╚══════╝
echo.
echo                                   ---Currently Not Available. Please Wait for Further Release---
echo.
echo                                                  Thank you for your interest!
echo                         This feature is currently under development and will be available in a future release.
echo                                For updates and announcements, please visit our GitHub repository.
echo.
echo                   We appreciate your patience and look forward to sharing the latest features with you soon.
timeout 2 >nul
echo.
pause
goto Main





:ipgrab

:: Run PowerShell script for scanning the network
powershell -NoProfile -Command ^
    "$subnet = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -match '^192' }).IPAddress -replace '\.\d+$'; ^
    $base = $subnet; ^
    Write-Host 'Detected Subnet:' $base.0/24; ^
    $output = @(); ^
    1..254 | ForEach-Object { ^
        $ip = \"$base.$_\"; ^
        if (Test-Connection -ComputerName $ip -Count 1 -Quiet) { ^
            $output += $ip; ^
        } ^
    }; ^
    $output | Out-File -FilePath 'ActiveDevices.txt' -Encoding UTF8; ^
    Write-Host 'Scan complete! Results saved to ActiveDevices.txt';"
pause

goto Main



:putty
cls
SET "putty_path="
SET "putty_found=false"

:: Check if PuTTY is in the system PATH by trying to call "putty"
where putty.exe >nul 2>nul
IF %ERRORLEVEL% EQU 0 (
    SET "putty_found=true"
)

:: If PuTTY is not found, look in common installation directories
IF "%putty_found%"=="false" (
    timeout 1 >nul
    echo PuTTY is not installed on your system.
    timeout 1 >nul
    echo Please download PuTTY from the official website.
    timeout 1 >nul
    echo Redirecting to the website......
    timeout 2 >nul
    
    start https://www.putty.org/
    pause
    goto Main
) ELSE (
    timeout 2 >nul
    echo PuTTY is already installed.
    timeout 2 >nul
    echo Opening PuTTY...
    timeout 2 >nul
    start putty.exe
    goto Main
)






























:credits
cls
echo.
echo                               ============================================================
echo                               =                   Credits Section                   =
echo                               ============================================================
echo.
echo [93m                      ╔═══════════════════════════════════════════════════════════════════════════╗
echo [93m                      ║                   Developed by: Shaswat                                   ║
echo [93m                      ║              Special Thanks to: [ME I GUESS :) ]                          ║
echo [93m                      ║                  Music Suggest: [AYAM-FRICTION]                           ║
echo [93m                      ║                   Follow us on: [https://github.com/shaswatacharya]       ║
echo [93m                      ║                        Support: [shaswatacharya123@gmail.com]             ║
echo [93m                      ║                                                                           ║
echo [93m                      ║        Please note that this is a basic batch script with limited         ║
echo [93m                      ║        functionality compared to advanced Python-based tools.             ║
echo [93m                      ║        Expect future updates for more features and better performance!    ║
echo [93m                      ║                                                                           ║
echo [93m                      ║                       Thanks for using this program!                      ║
echo [93m                      ╚═══════════════════════════════════════════════════════════════════════════╝
echo.
echo                                ============================================================
echo                                            Back to Main Menu: [Press any key] 
echo.
pause
goto Main
