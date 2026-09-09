cask "macview" do
  version "0.2.1"
  sha256 "1597698bb6c709238463b61622b4e2d9a27e5377c11f3e033625407f41fc588b"

  url "https://github.com/piro0919/macview/releases/download/v#{version}/Macview-#{version}.dmg"
  name "Macview"
  desc "Image viewer where the window is the image"
  homepage "https://macview.kkweb.io"

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
