cask "mekuri" do
  version "0.2.0"
  sha256 "d2fa0bf1bfe1bf46ed94783a18b27ab589678a853f461ac2f2a38e79148d7672"

  url "https://github.com/piro0919/mekuri/releases/download/v#{version}/Mekuri_#{version}_aarch64.dmg",
      verified: "github.com/piro0919/mekuri/"
  name "Mekuri"
  desc "Comic reader that opens archives and image folders directly"
  homepage "https://mekuri.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Mekuri.app"

  uninstall quit: "com.mekuri.desktop"

  zap trash: [
    "~/Library/Application Support/com.mekuri.desktop",
    "~/Library/Caches/com.mekuri.desktop",
    "~/Library/Preferences/com.mekuri.desktop.plist",
    "~/Library/Saved Application State/com.mekuri.desktop.savedState",
  ]
end
