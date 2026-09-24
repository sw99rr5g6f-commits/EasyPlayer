@echo off
echo Building IPTV Player APK...
echo.
echo Prerequisites:
echo - Android SDK must be installed
echo - ANDROID_HOME environment variable must be set
echo - Java JDK 8 or higher must be installed
echo.

REM Check if Android SDK is available
if not defined ANDROID_HOME (
    echo ERROR: ANDROID_HOME is not set. Please install Android SDK and set ANDROID_HOME
    pause
    exit /b 1
)

REM Check if gradlew exists (would be created by Android Studio normally)
if not exist "gradlew.bat" (
    echo Creating Gradle wrapper...
    gradle wrapper --gradle-version=7.6
)

echo Building debug APK...
gradlew assembleDebug

if %ERRORLEVEL% EQU 0 (
    echo.
    echo BUILD SUCCESSFUL!
    echo APK location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo You can install this APK on your Android TV box using:
    echo 1. Copy the APK to your Android TV
    echo 2. Enable "Unknown sources" in Settings
    echo 3. Install using a file manager app
) else (
    echo.
    echo BUILD FAILED! Please check the errors above.
)

pause
