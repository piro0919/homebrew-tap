cask "nonja" do
  version "0.2.6"
  sha256 "8ae6e604d87d55739e040a95f7eee101272a8dbfdd59bb7e533b2b914517ee5b"

  url "https://github.com/piro0919/nonja/releases/download/v#{version}/Nonja-#{version}.dmg"
  name "Nonja"
  desc "Quiet inbox that collects macOS notifications by app"
  homepage "https://nonja.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nonja.app"

  uninstall quit: "io.kkweb.nonja"

  zap trash: [
    "~/Library/Application Support/io.kkweb.nonja",
    "~/Library/Caches/io.kkweb.nonja",
    "~/Library/Preferences/io.kkweb.nonja.plist",
    "~/Library/Saved Application State/io.kkweb.nonja.savedState",
  ]
end
