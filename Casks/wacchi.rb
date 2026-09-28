cask "wacchi" do
  version "0.1.3"
  sha256 "56f26c40be6e618cb550a9b1868704a132d62a23c4ed3ac184fe4b1065608936"

  url "https://github.com/piro0919/wacchi/releases/download/v#{version}/Wacchi-#{version}.dmg"
  name "Wacchi"
  desc "Shows how many watts your Mac is drawing from its charger"
  homepage "https://github.com/piro0919/wacchi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Wacchi.app"

  uninstall quit: "io.kkweb.wacchi"

  zap trash: [
    "~/Library/Application Support/io.kkweb.wacchi",
    "~/Library/Caches/io.kkweb.wacchi",
    "~/Library/Preferences/io.kkweb.wacchi.plist",
    "~/Library/Saved Application State/io.kkweb.wacchi.savedState",
  ]
end
