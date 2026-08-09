cask "simpletranscribe" do
  version "1.0.3"
  sha256 "2a0405dff2b0ca1603069f031becc88e078593466d0d33930094b9be8cfbdd28"

  url "https://github.com/redmagikarp13/simpletranscribe/releases/download/v#{version}/SimpleTranscribe-Mac.zip"
  name "Simple Transcribe"
  desc "Transcritor local de áudio para texto otimizado para Apple Silicon"
  homepage "https://github.com/redmagikarp13/simpletranscribe"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SimpleTranscribe.app"

  zap trash: [
    "~/Library/Application Support/com.simpletranscribe.app",
    "~/Library/Caches/com.simpletranscribe.app",
    "~/Library/Preferences/com.simpletranscribe.app.plist",
  ]
end
