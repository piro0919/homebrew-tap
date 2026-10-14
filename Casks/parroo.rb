cask "parroo" do
  version "0.1.0"
  sha256 "664d39abe0e021f9e84bff249cdf87bad588614a5f34010fc5df88a64e316ab9"

  url "https://github.com/piro0919/parroo/releases/download/v#{version}/Parroo-#{version}.dmg"
  name "Parroo"
  desc "Shows Claude Code usage and reset times in the menu bar"
  homepage "https://parroo.kkweb.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Parroo.app"

  uninstall quit: "io.kkweb.parroo"

  zap trash: [
    "~/Library/Caches/io.kkweb.parroo",
    "~/Library/HTTPStorages/io.kkweb.parroo",
    "~/Library/Preferences/io.kkweb.parroo.plist",
  ]
end
