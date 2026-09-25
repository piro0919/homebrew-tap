cask "hawky" do
  version "0.1.0"
  sha256 "e9bf30d96ff167bc1f4e68afcf5488b3d73d036d870d3d5788f819491a908685"

  url "https://github.com/piro0919/hawky/releases/download/v#{version}/Hawky-#{version}.dmg",
      verified: "github.com/piro0919/hawky/"
  name "Hawky"
  desc "Shows when Claude Code is waiting for permission and jumps to it"
  homepage "https://hawky.kkweb.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Hawky.app"

  uninstall quit: "io.kkweb.hawky"

  zap trash: [
    "~/.claude/hawky",
    "~/Library/Caches/io.kkweb.hawky",
    "~/Library/HTTPStorages/io.kkweb.hawky",
    "~/Library/Preferences/io.kkweb.hawky.plist",
  ]
end
