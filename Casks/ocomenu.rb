cask "ocomenu" do
  version "0.1.0"
  sha256 "094f74d264ee76f38b938235facd3785e0efea1bf920a3119a9d249ef76e5c6d"

  url "https://github.com/piro0919/ocomenu/releases/download/v#{version}/Ocomenu-#{version}.dmg"
  name "Ocomenu"
  desc "Replaces Finder's context menu with one you choose the items of"
  homepage "https://github.com/piro0919/ocomenu"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ocomenu.app"

  uninstall quit: "io.kkweb.ocomenu"

  zap trash: [
    "~/Library/Application Support/io.kkweb.ocomenu",
    "~/Library/Caches/io.kkweb.ocomenu",
    "~/Library/Preferences/io.kkweb.ocomenu.plist",
    "~/Library/Saved Application State/io.kkweb.ocomenu.savedState",
  ]
end
