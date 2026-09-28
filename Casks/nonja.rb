cask "nonja" do
  version "0.2.5"
  sha256 "734bb440f446088360ed819713b369f905458d6a6dc7fd1dfb89b945f88c5a8c"

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
