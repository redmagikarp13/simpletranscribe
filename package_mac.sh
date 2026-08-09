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
    <string>1.0.3</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0.3</string>
    <key>CFBundleIconFile</key>
    <string>AppIcon</string>
    <key>LSMinimumSystemVersion</key>
    <string>14.0</string>
    <key>NSDocumentsFolderUsageDescription</key>
    <string>O Simple Transcribe precisa acessar a pasta Documentos para baixar e ler os modelos de Inteligência Artificial.</string>
    <key>NSDownloadsFolderUsageDescription</key>
    <string>O Simple Transcribe precisa acessar a pasta Downloads para salvar os seus arquivos de transcrição.</string>
    <key>NSDesktopFolderUsageDescription</key>
    <string>O Simple Transcribe precisa acessar a pasta Mesa (Desktop) para ler e salvar seus arquivos.</string>
</dict>
</plist>
EOF

# Zip the bundle
zip -r SimpleTranscribe-Mac.zip SimpleTranscribe.app

# Create tag and release
git tag v1.0.3
git push origin v1.0.3
gh release create v1.0.3 SimpleTranscribe-Mac.zip --title "Simple Transcribe v1.0.3 (Native Mac App)" --notes "Release Inicial da versão nativa para macOS (Apple Silicon)"
