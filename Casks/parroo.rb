cask "parroo" do
  version "0.1.1"
  sha256 "c82b01d900a1dd4b04c45f4d6bbcd4196443d868d06b4168f0cc719429c23f88"

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
