cask "hawky" do
  version "0.1.4"
  sha256 "3d2594f3559f79c31552419d9b68aa7f441a8b8e13781cef6c99484b2fb56589"

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
