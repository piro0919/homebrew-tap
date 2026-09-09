cask "macview" do
  version "0.3.1"
  sha256 "c0fe42284799361e9f8aa40fb5ca645cecd6e883d00b6e5b858bd7f7e5f672af"

  url "https://github.com/piro0919/macview/releases/download/v#{version}/Macview-#{version}.dmg"
  name "Macview"
  desc "Image viewer where the window is the image"
  homepage "https://macview.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
