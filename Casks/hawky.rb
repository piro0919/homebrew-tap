cask "hawky" do
  version "0.2.1"
  sha256 "8ff530005cd4f51dd71837264a8e3b410ca0a8720b14ff823d6f18afd875a8fc"

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
