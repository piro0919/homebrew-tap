cask "macview" do
  version "0.1.0"
  sha256 "e98c9b4c095ca12d9062903eadbfb1f43557a47d752be1164685d16f881843bc"

  url "https://github.com/piro0919/macview/releases/download/v#{version}/Macview-#{version}.dmg",
      verified: "github.com/piro0919/macview/"
  name "Macview"
  desc "Image viewer where the window is the image"
  homepage "https://github.com/piro0919/macview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Macview.app"

  uninstall quit: "io.kkweb.macview"

  zap trash: [
    "~/Library/Caches/io.kkweb.macview",
    "~/Library/Preferences/io.kkweb.macview.plist",
    "~/Library/Saved Application State/io.kkweb.macview.savedState",
  ]
end
