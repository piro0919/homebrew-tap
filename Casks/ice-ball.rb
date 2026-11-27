cask "ice-ball" do
  version "0.1.3"
  sha256 "369c84b4b9ffb51ef0285255eaf5242355da65a5c6f059e398d61994a5b21b4b"

  url "https://github.com/piro0919/ice-ball/releases/download/v#{version}/IceBall-#{version}.dmg"
  name "Ice Ball"
  desc "Changes how the menu bar looks with a transparent, click-through overlay"
  homepage "https://ice-ball.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "IceBall.app"

  uninstall quit: "io.kkweb.IceBall"

  zap trash: [
    "~/Library/Caches/io.kkweb.IceBall",
    "~/Library/HTTPStorages/io.kkweb.IceBall",
    "~/Library/Preferences/io.kkweb.IceBall.plist",
  ]
end
