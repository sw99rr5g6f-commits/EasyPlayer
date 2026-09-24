#!/bin/bash

echo "🚀 Building IPTV Player APK Online..."
echo "===================================="

# Make gradlew executable
chmod +x gradlew

# Clean previous builds
echo "🧹 Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "🔨 Building debug APK..."
./gradlew assembleDebug

# Check if build was successful
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo "✅ BUILD SUCCESSFUL!"
    echo "📱 APK Location: app/build/outputs/apk/debug/app-debug.apk"
    echo "📊 APK Size: $(du -h app/build/outputs/apk/debug/app-debug.apk | cut -f1)"
    echo ""
    echo "📋 Installation Instructions:"
    echo "1. Download the APK file"
    echo "2. Transfer to your Android TV box"
    echo "3. Enable 'Unknown Sources' in Settings"
    echo "4. Install using file manager"
    echo "5. Launch 'IPTV Player' from apps"
    echo ""
    echo "🎉 Ready to use with M3U playlists and Xtream Codes!"
else
    echo "❌ BUILD FAILED!"
    echo "Check the build logs above for errors."
    exit 1
fi
