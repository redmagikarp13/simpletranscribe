cask "simpletranscribe" do
  version "1.0.4"
  sha256 "e3e35f380464d20c421e7835a9317dad5e73ad3a71a134a47a86f69462d2060b"

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
