cask "ocomenu" do
  version "0.1.2"
  sha256 "8558e642135a3933c623cd6ab6575cb6eac75aef358664da5da9d7ecb9e9da3f"

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
