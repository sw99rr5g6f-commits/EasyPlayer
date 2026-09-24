# 🚀 Quick Start: Build Your IPTV Player APK Online

Since you don't have Android SDK installed, here's the **fastest way** to get your APK:

## ⚡ Method 1: GitHub Actions (Recommended - 100% Free)

### Step-by-Step:

1. **Go to GitHub.com**
   - Create free account if you don't have one
   - Click "New repository"
   - Name: `IPTV-Player`
   - Set to Public ✅
   - Click "Create repository"

2. **Upload Your Project**
   - Click "uploading an existing file"
   - Select ALL files from `C:\Users\Pro\IPTVPlayer\`
   - Drag and drop or browse to upload
   - Write commit message: "Initial IPTV Player project"
   - Click "Commit changes"

3. **Build APK Automatically**
   - Click "Actions" tab in your repository
   - You'll see "Build IPTV Player APK" workflow
   - Click on it
   - Click "Run workflow" (green button)
   - Click "Run workflow" again to confirm
   - Wait 5-10 minutes ⏱️

4. **Download Your APK**
   - Once build is complete (green checkmark ✅)
   - Click on the completed workflow run
   - Scroll down to "Artifacts"
   - Download "iptv-player-debug-apk"
   - Extract the ZIP file
   - **Your APK is ready!** 📱

## ⚡ Method 2: Gitpod (Browser IDE)

1. **Upload to GitHub** (same as Method 1, steps 1-2)
2. **Open in Gitpod**:
   - Go to `gitpod.io/#https://github.com/YOUR_USERNAME/IPTV-Player`
   - Wait for environment to load
   - In terminal, run: `chmod +x gradlew && ./gradlew assembleDebug`
   - Download APK from `app/build/outputs/apk/debug/`

## 📱 Install on Android TV Box

Once you have your APK:

1. **Enable Unknown Sources**:
   - Android TV Settings → Security & Privacy → Unknown Sources → ON

2. **Transfer APK**:
   - Copy APK to USB drive
   - OR upload to Google Drive/Dropbox and download on TV

3. **Install**:
   - Use file manager app on TV
   - Navigate to APK file
   - Click to install
   - Accept permissions

4. **Launch & Enjoy**! 🎉
   - Find "IPTV Player" in your apps
   - Add your M3U playlists or Xtream Codes
   - Start watching!

## 🔧 Your Complete IPTV Player Features

✅ **M3U Playlist Support** - Add any M3U URL
✅ **Xtream Codes API** - Full server integration  
✅ **Android TV Optimized** - Perfect for TV boxes
✅ **Channel Logos** - Beautiful interface
✅ **HLS Streaming** - Professional video player
✅ **Free & Open Source** - No ads, no tracking

## 📞 Need Help?

If you run into issues:

1. **Check GitHub Actions logs** for build errors
2. **Ensure all files uploaded** to GitHub
3. **Try Gitpod method** as alternative
4. **Contact support** - I can help troubleshoot

## 🎯 Pro Tips

- **Repository must be PUBLIC** for free GitHub Actions
- **Upload ALL files** including hidden `.github` folder
- **Be patient** - first build takes longer to download dependencies
- **Keep project** on GitHub for future updates

---

**You're just a few clicks away from having your own professional IPTV Player APK! 🚀**

The project is complete and ready to build online. No local Android SDK required!
