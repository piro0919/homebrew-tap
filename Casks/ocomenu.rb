cask "ocomenu" do
  version "0.1.4"
  sha256 "2369de4d4f6e17ff3667976862d152b376dca4140133c1438e32b9f06b4ccd66"

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
