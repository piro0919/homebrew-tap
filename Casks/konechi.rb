cask "konechi" do
  version "0.1.2"
  sha256 "1ca5cdc27317f9cab5b06e0de2f96ed24ac461d3c6f44c0881e390b0ea3b3607"

  url "https://github.com/piro0919/konechi/releases/download/v#{version}/Konechi-#{version}.dmg",
      verified: "github.com/piro0919/konechi/"
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
