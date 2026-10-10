cask "vocafy-visualizer" do
  version "0.1.0"
  sha256 "047bab1c2d2e7d68a214b0d2525771f3a3410c050be7792f1cd8c0ec42c0f029"

  url "https://github.com/piro0919/vocafy-visualizer/releases/download/v#{version}/VocafyVisualizer-#{version}.dmg"
  name "Vocafy Visualizer"
  desc "Companion app for Vocafy that draws bars moving with the song playing in Chrome"
  homepage "https://github.com/piro0919/vocafy-visualizer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "VocafyVisualizer.app"

  uninstall quit: "io.kkweb.vocafy-visualizer"

  zap trash: [
    "~/Library/Preferences/io.kkweb.vocafy-visualizer.plist",
    "~/Library/Saved Application State/io.kkweb.vocafy-visualizer.savedState",
  ]
end
