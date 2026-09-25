cask "hawky" do
  version "0.1.2"
  sha256 "63d75f30cf5860a0b377a45adc8780517f52cb2cf2293900d016699667d83d14"

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
