cask "mac-classic-player" do
  version "0.3.2"
  sha256 "b094bdf3b1a713c58bc972e6d85f7cc2647aa70081dded18d3206aaf8136e35f"

  url "https://github.com/piro0919/mac-classic-player/releases/download/v#{version}/Mac.Classic.Player_#{version}_aarch64.dmg",
      verified: "github.com/piro0919/mac-classic-player/"
  name "Mac Classic Player"
  desc "Keyboard-driven media player in the spirit of Media Player Classic"
  homepage "https://mcp.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Mac Classic Player.app"

  uninstall quit: "com.example.macclassicplayer"

  zap trash: [
    "~/Library/Application Support/com.example.macclassicplayer",
    "~/Library/Caches/com.example.macclassicplayer",
    "~/Library/Preferences/com.example.macclassicplayer.plist",
    "~/Library/Saved Application State/com.example.macclassicplayer.savedState",
  ]
end
