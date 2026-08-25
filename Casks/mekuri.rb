cask "mekuri" do
  version "0.3.0"
  sha256 "4338f487b484401b3f6059f9b0a8307c46aa36ff0049f948e64c5789405b7eba"

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
  depends_on macos: :sonoma

  app "Mekuri.app"

  uninstall quit: "com.mekuri.desktop"

  zap trash: [
    "~/Library/Application Support/com.mekuri.desktop",
    "~/Library/Caches/com.mekuri.desktop",
    "~/Library/Preferences/com.mekuri.desktop.plist",
    "~/Library/Saved Application State/com.mekuri.desktop.savedState",
  ]
end
