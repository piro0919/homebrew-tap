cask "konechi" do
  version "0.1.3"
  sha256 "10039ec1ccbee352fa34d1f6c793d9268cfe76b7a1ae0691f28e10e308b37267"

  url "https://github.com/piro0919/konechi/releases/download/v#{version}/Konechi-#{version}.dmg"
  name "Konechi"
  desc "Shows whether you are on Ethernet or Wi-Fi"
  homepage "https://konechi.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Konechi.app"

  uninstall quit: "io.kkweb.konechi"

  zap trash: [
    "~/Library/Application Support/io.kkweb.konechi",
    "~/Library/Caches/io.kkweb.konechi",
    "~/Library/Preferences/io.kkweb.konechi.plist",
    "~/Library/Saved Application State/io.kkweb.konechi.savedState",
  ]
end
