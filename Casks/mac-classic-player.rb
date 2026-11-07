cask "mac-classic-player" do
  version "0.4.2"
  sha256 "50803f7c365a2f8abab5d1502894dc68fc48747af4d7ca450b3f911640b70722"

  url "https://github.com/piro0919/mac-classic-player/releases/download/v#{version}/Mac.Classic.Player_#{version}_aarch64.dmg"
  name "Mac Classic Player"
  desc "Keyboard-driven media player in the spirit of Media Player Classic"
  homepage "https://mcp.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Mac Classic Player.app"

  uninstall quit: "com.example.macclassicplayer"

  zap trash: [
    "~/Library/Application Support/com.example.macclassicplayer",
    "~/Library/Caches/com.example.macclassicplayer",
    "~/Library/Preferences/com.example.macclassicplayer.plist",
    "~/Library/Saved Application State/com.example.macclassicplayer.savedState",
  ]
end
