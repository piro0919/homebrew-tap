cask "gocci" do
  version "1.1.7"
  sha256 "63eec3218fef6254adca56ebc8447680e143abd963052b92398469feb11a479f"

  url "https://github.com/piro0919/gocci/releases/download/v#{version}/Gocci-#{version}.dmg"
  name "Gocci"
  desc "Mounts Google Drive in Finder from the menu bar"
  homepage "https://gocci.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Gocci.app"

  uninstall quit: "io.kkweb.gocci"

  zap trash: [
    "~/Library/Application Support/io.kkweb.gocci",
    "~/Library/Caches/io.kkweb.gocci",
    "~/Library/Preferences/io.kkweb.gocci.plist",
    "~/Library/Saved Application State/io.kkweb.gocci.savedState",
  ]
end
