cask "simpletranscribe" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/redmagikarp13/simpletranscribe/releases/download/v#{version}/SimpleTranscribe-Mac.zip"
  name "Simple Transcribe"
  desc "Transcritor local de áudio para texto otimizado para Apple Silicon"
  homepage "https://github.com/redmagikarp13/simpletranscribe"

  app "SimpleTranscribe.app"

  zap trash: [
    "~/Library/Application Support/SimpleTranscribe",
    "~/Library/Preferences/com.simpletranscribe.app.plist",
    "~/Library/Saved Application State/com.simpletranscribe.app.savedState",
  ]
end
