cask "gocci" do
  version "1.1.1"
  sha256 "245d4ed04942712f28d0de70be27c317b30a98984d623b77bcf435bcf2ef4ac6"

  url "https://github.com/piro0919/gocci/releases/download/v#{version}/Gocci-#{version}.dmg",
      verified: "github.com/piro0919/gocci/"
  name "Gocci"
  desc "Mounts Google Drive in Finder from the menu bar"
  homepage "https://gocci.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Gocci.app"

  uninstall quit: "io.kkweb.gocci"

  zap trash: [
    "~/Library/Application Support/io.kkweb.gocci",
    "~/Library/Caches/io.kkweb.gocci",
    "~/Library/Preferences/io.kkweb.gocci.plist",
    "~/Library/Saved Application State/io.kkweb.gocci.savedState",
  ]
end
