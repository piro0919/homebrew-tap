cask "macview" do
  version "0.3.3"
  sha256 "bd871046a8c8b2cf73cc85d55c3363c1c0d3f7400a0e9aa7f1dd63eb6561ad12"

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
