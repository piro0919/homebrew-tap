cask "macview" do
  version "0.1.1"
  sha256 "dae00bf99cf8d633bff16f91050ca7979222ce83b2f82ee53d6f4c503a1fdd40"

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
