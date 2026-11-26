cask "owler" do
  version "0.1.19"
  sha256 "5d40a7c0ca6414c2610a2b3f4e6c7461d37ef8bb1bb1518226704efc325ce5cb"

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
