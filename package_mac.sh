#!/bin/bash

# Build the release binary
swift build -c release

# Create App Bundle structure
mkdir -p "SimpleTranscribe.app/Contents/MacOS"
mkdir -p "SimpleTranscribe.app/Contents/Resources"
cp Sources/SimpleTranscribe/Resources/AppIcon.icns "SimpleTranscribe.app/Contents/Resources/"

# Copy executable
cp .build/release/SimpleTranscribe "SimpleTranscribe.app/Contents/MacOS/"

# Create Info.plist
cat << 'EOF' > SimpleTranscribe.app/Contents/Info.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>SimpleTranscribe</string>
    <key>CFBundleIdentifier</key>
    <string>com.simpletranscribe.app</string>
    <key>CFBundleName</key>
    <string>Simple Transcribe</string>
    <key>CFBundleVersion</key>
    <string>1.0.0</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0.0</string>
    <key>CFBundleIconFile</key>
    <string>AppIcon</string>
    <key>LSMinimumSystemVersion</key>
    <string>14.0</string>
</dict>
</plist>
EOF

# Zip the bundle
zip -r SimpleTranscribe-Mac.zip SimpleTranscribe.app

# Create tag and release
git tag v1.0.0
git push origin v1.0.0
gh release create v1.0.0 SimpleTranscribe-Mac.zip --title "Simple Transcribe v1.0.0 (Native Mac App)" --notes "Release Inicial da versão nativa para macOS (Apple Silicon)"
