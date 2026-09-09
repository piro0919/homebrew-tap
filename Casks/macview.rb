cask "macview" do
  version "0.2.0"
  sha256 "3bbc289df5867c96ac2f1e59f21f21a475b7d2014a746f44bc85d8b003b31a64"

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
