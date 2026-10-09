cask "wacchi" do
  version "0.1.4"
  sha256 "1a8cf18ea1b6c6be48546fbe4887cb59161a3d6db0d251757818ecd9082e396f"

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
