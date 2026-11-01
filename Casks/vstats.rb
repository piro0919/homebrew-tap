cask "vstats" do
  version "0.2.0"
  sha256 "059594aac5aef6983f91e844a497145705d66d343b6a4723ef7b682395cc9951"

  url "https://github.com/piro0919/vstats/releases/download/v#{version}/VStats-#{version}.dmg"
  name "VStats"
  desc "Shows Vercel Web Analytics for all your projects in one window"
  homepage "https://vstats.kkweb.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "VStats.app"

  uninstall quit: "io.kkweb.vstats"

  zap trash: [
    "~/Library/Application Support/VStats",
    "~/Library/Caches/io.kkweb.vstats",
    "~/Library/HTTPStorages/io.kkweb.vstats",
    "~/Library/Preferences/io.kkweb.vstats.plist",
  ]
end
