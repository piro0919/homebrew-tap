cask "ocomenu" do
  version "0.1.3"
  sha256 "fbcf679872d91e1a69d9dfffde5a2f60a3a7d2ee04f7afa931a1c0e9e979f3b0"

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
