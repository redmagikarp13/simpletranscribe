cask "simpletranscribe" do
  version "1.0.7"
  sha256 "c4e149f281ec1ed75fba4b7966f830d8e34e2ec3acb8856e196cf4ca5f7b2fc6"

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
