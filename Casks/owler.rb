cask "owler" do
  version "0.1.6"
  sha256 "e3ab392f1cb441a5e8ca084a90b01c5f8646bd0b7a2b1157a3fca94846381762"

  url "https://github.com/piro0919/owler/releases/download/v#{version}/Owler-#{version}.dmg"
  name "Owler"
  desc "Keeps an eye on launchd jobs and opens any run in Claude Code"
  homepage "https://owler.kkweb.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Owler.app"

  uninstall quit: "io.kkweb.owler"

  zap trash: [
    "~/Library/Application Support/Owler",
    "~/Library/Caches/io.kkweb.owler",
    "~/Library/HTTPStorages/io.kkweb.owler",
    "~/Library/LaunchAgents/io.kkweb.owler.job.*.plist",
    "~/Library/Preferences/io.kkweb.owler.plist",
  ]
end
