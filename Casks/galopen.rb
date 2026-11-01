cask "galopen" do
  version "0.8.2"
  sha256 "79e51ab067c5a5e7d7b2c64d22aad5ff401ab7a2b26a8afdfa5c77d7ace2fcf9"

  url "https://github.com/piro0919/galopen/releases/download/v#{version}/Galopen_#{version}_aarch64.dmg"
  name "Galopen"
  desc "Opens meeting URLs from your calendar automatically"
  homepage "https://galopen.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Galopen.app"

  uninstall quit: "com.galopen.desktop"

  zap trash: [
    "~/Library/Application Support/com.galopen.desktop",
    "~/Library/Caches/com.galopen.desktop",
    "~/Library/Preferences/com.galopen.desktop.plist",
    "~/Library/Saved Application State/com.galopen.desktop.savedState",
  ]
end
