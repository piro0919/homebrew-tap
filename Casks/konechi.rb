cask "konechi" do
  version "0.1.4"
  sha256 "99e1a27680cf389da67bdc60675ceeb906515727c33b0e0dae5acb2c4677ff4b"

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
