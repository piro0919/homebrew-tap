cask "gocci" do
  version "1.1.3"
  sha256 "193969bcd83ad52164fab36dd6d14ff2d269165bd5d6c37fe06d9bd2dcde4a4c"

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
