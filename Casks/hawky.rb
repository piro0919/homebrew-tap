cask "hawky" do
  version "0.1.3"
  sha256 "908466e6385802f613c7febf5ce6a4a1b18462e7c35b6c41bc4cccfb29852e11"

  url "https://github.com/piro0919/hawky/releases/download/v#{version}/Hawky-#{version}.dmg"
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
