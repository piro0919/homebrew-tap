cask "ice-ball" do
  version "0.1.1"
  sha256 "6ee62648409d833fd32942ac35a6c68c2771f082a3ff5d6a1f1d8d2b1e63f739"

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
