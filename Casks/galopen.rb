cask "galopen" do
  version "0.8.1"
  sha256 "62005958ad96d75ac7cd37f8a3ade46e03e59aef9c99c3a0e8cd7974df1af3eb"

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
