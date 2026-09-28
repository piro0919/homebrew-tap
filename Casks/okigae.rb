cask "okigae" do
  version "0.2.1"
  sha256 "0aa227e7df57fc99fbf2d80f968d2c6308868b7833bcb7523583f0fa814db7db"

  url "https://github.com/piro0919/okigae/releases/download/v#{version}/Okigae-#{version}.dmg"
  name "Okigae"
  desc "Replaces menu bar status icons with character artwork"
  homepage "https://okigae.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Okigae.app"

  uninstall quit: "io.kkweb.okigae"

  zap trash: [
    "~/Library/Application Support/io.kkweb.okigae",
    "~/Library/Caches/io.kkweb.okigae",
    "~/Library/Preferences/io.kkweb.okigae.plist",
    "~/Library/Saved Application State/io.kkweb.okigae.savedState",
  ]
end
