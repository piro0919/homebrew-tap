cask "hawky" do
  version "0.1.5"
  sha256 "497eea3798d5b0116a36332f611f3b493b6c0e5c7d4fa7047a0e5cd7e3db42a7"

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
