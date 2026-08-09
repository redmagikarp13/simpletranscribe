cask "simpletranscribe" do
  version "1.0.9"
  sha256 "d8fbd5bfd7104166ffaa34a43832318bb1cee383427795cd381669b7b205ecd2"

  url "https://github.com/redmagikarp13/simpletranscribe/releases/download/v#{version}/SimpleTranscribe-Mac.zip"
  name "Simple Transcribe"
  desc "Transcritor local de áudio para texto otimizado para Apple Silicon"
  homepage "https://github.com/redmagikarp13/simpletranscribe"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "SimpleTranscribe.app"

  zap trash: [
    "~/Library/Application Support/com.simpletranscribe.app",
    "~/Library/Caches/com.simpletranscribe.app",
    "~/Library/Preferences/com.simpletranscribe.app.plist",
  ]
end
