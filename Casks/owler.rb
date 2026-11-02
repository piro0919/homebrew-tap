cask "owler" do
  version "0.1.18"
  sha256 "63d2299aeebbc37a90ad69e28a74dbfc99f16daeff4ee0f9f56437b11ae9b820"

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
