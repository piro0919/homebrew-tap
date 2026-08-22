cask "nonja" do
  version "0.2.4"
  sha256 "31c6374160ab10e4671642b8f636d2cad40df6b8886347d99f3e33269de288a8"

  url "https://github.com/piro0919/nonja/releases/download/v#{version}/Nonja-#{version}.dmg"
  name "Nonja"
  desc "Quiet inbox that collects macOS notifications by app"
  homepage "https://nonja.kkweb.io"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Nonja.app"

  zap trash: [
    "~/Library/Application Support/io.kkweb.nonja",
    "~/Library/Caches/io.kkweb.nonja",
    "~/Library/Preferences/io.kkweb.nonja.plist",
    "~/Library/Saved Application State/io.kkweb.nonja.savedState",
  ]
end
