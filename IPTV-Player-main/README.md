# IPTV Player for Android TV

A free, open-source IPTV player for Android TV boxes that supports M3U playlists and Xtream Codes API.

## Features

- 📺 **M3U Playlist Support**: Load channels from M3U playlist URLs
- 🌐 **Xtream Codes API**: Full support for Xtream Codes servers
- 📱 **Android TV Optimized**: Designed for TV boxes with remote control navigation
- 🎮 **ExoPlayer Integration**: Professional-grade video streaming with HLS support
- 📋 **Channel List**: Browse and organize channels by groups
- 🖼️ **Channel Logos**: Display channel logos when available
- ⚡ **Fast Loading**: Efficient playlist parsing and channel loading

## Screenshots

- **Home Screen**: Input M3U URLs or Xtream Codes credentials
- **Channel List**: Browse available channels with logos and groups
- **Video Player**: Full-screen video playback with controls

## Installation

### Option 1: Build from Source

1. **Prerequisites**:
   - Android Studio or Android SDK
   - Java JDK 8+
   - Set `ANDROID_HOME` environment variable

2. **Build APK**:
   ```bash
   # On Windows
   build.bat
   
   # On Linux/Mac
   ./gradlew assembleDebug
   ```

3. **Install APK**:
   - Copy `app/build/outputs/apk/debug/app-debug.apk` to your Android TV
   - Enable "Unknown Sources" in Settings
   - Install using a file manager

### Option 2: Direct Installation

If you have a pre-built APK:
1. Copy the APK file to your Android TV box
2. Enable "Unknown Sources" in Settings > Security
3. Use a file manager to install the APK
4. Launch "IPTV Player" from your apps

## Usage

### M3U Playlists

1. Open the app
2. Enter your M3U playlist URL in the first field
3. Tap "Load Playlist"
4. Browse channels and tap to play

Example M3U URL format:
```
http://example.com/playlist.m3u
https://example.com/iptv/playlist.m3u8
```

### Xtream Codes

1. Open the app
2. Enter your Xtream server URL
3. Enter your username and password
4. Tap "Load Xtream"
5. Browse channels and tap to play

Example Xtream server format:
```
Server URL: http://example.com:8080
Username: your_username
Password: your_password
```

## Supported Formats

- **Playlists**: M3U, M3U8
- **Streaming**: HLS (HTTP Live Streaming)
- **APIs**: Xtream Codes API

## Requirements

- **Android Version**: 5.0+ (API Level 21)
- **Architecture**: ARM, ARM64, x86, x86_64
- **Internet**: Required for streaming
- **Storage**: ~50MB for app installation

## Features in Detail

### M3U Parser
- Parses EXTINF tags for channel information
- Extracts channel names, logos, and groups
- Supports both local and remote M3U files
- Handles various M3U format variations

### Xtream Codes Integration
- Full API authentication
- Live TV channel loading
- Category support
- Channel logos and metadata

### Video Player
- ExoPlayer-based streaming engine
- HLS stream support
- Adaptive bitrate streaming
- Buffer management for live streams
- Error handling and recovery

### Android TV Optimization
- D-pad navigation support
- Large, TV-friendly interface elements
- Focus management for remote controls
- Leanback UI components

## Troubleshooting

### Common Issues

1. **"No channels found"**
   - Check your M3U URL is accessible
   - Verify Xtream credentials are correct
   - Ensure internet connection is stable

2. **"Playback error"**
   - Stream URL may be unavailable
   - Try a different channel
   - Check internet connection speed

3. **"Error loading channels"**
   - Verify server URL format (include http:// or https://)
   - Check firewall settings
   - Try different server port

### Network Requirements
- Stable internet connection (minimum 2Mbps for SD, 8Mbps for HD)
- Access to IPTV server (no geo-blocking)
- DNS resolution working properly

## Legal Notice

This application is a media player only. It does not provide any content, channels, or streams. Users are responsible for:
- Obtaining legal access to IPTV services
- Complying with local laws and regulations
- Respecting content providers' terms of service

## Technical Details

### Dependencies
- ExoPlayer 2.19.1 (Video streaming)
- OkHttp 4.11.0 (HTTP networking)
- Gson 2.10.1 (JSON parsing)
- Glide 4.15.1 (Image loading)
- AndroidX Libraries (UI components)

### Architecture
- **MVVM Pattern**: Clean separation of concerns
- **Async Processing**: Background thread handling
- **Memory Management**: Proper resource cleanup
- **Error Handling**: Comprehensive exception handling

## Development

### Project Structure
```
app/
├── src/main/java/com/iptvplayer/
│   ├── MainActivity.java          # Main activity
│   ├── ChannelListActivity.java   # Channel browsing
│   ├── PlayerActivity.java        # Video player
│   ├── Channel.java               # Data model
│   ├── M3UParser.java            # M3U parsing
│   ├── XtreamAPI.java            # Xtream API
│   └── ChannelAdapter.java       # RecyclerView adapter
├── src/main/res/
│   ├── layout/                   # UI layouts
│   ├── values/                   # Strings, colors, themes
│   └── drawable/                 # Icons and drawables
└── src/main/AndroidManifest.xml  # App configuration
```

### Building
```bash
# Debug build
./gradlew assembleDebug

# Release build (requires signing)
./gradlew assembleRelease
```

## Contributing

This is a basic IPTV player implementation. You can extend it with:
- EPG (Electronic Program Guide) support
- VOD (Video on Demand) integration
- Multiple playlist management
- Advanced player controls
- Subtitle support
- Recording capabilities

## License

This project is provided as-is for educational purposes. Feel free to modify and distribute according to your needs.

---

**Enjoy your IPTV streaming experience!** 📺
