cask "wacchi" do
  version "0.1.0"
  sha256 "a615123d0d898d7a43e03f4734831d290582460d12d1501ebf1704637fa1b911"

  url "https://github.com/piro0919/wacchi/releases/download/v#{version}/Wacchi-#{version}.dmg"
  name "Wacchi"
  desc "Shows how many watts your Mac is drawing from its charger"
  homepage "https://github.com/piro0919/wacchi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Wacchi.app"

  uninstall quit: "io.kkweb.wacchi"

  zap trash: [
    "~/Library/Application Support/io.kkweb.wacchi",
    "~/Library/Caches/io.kkweb.wacchi",
    "~/Library/Preferences/io.kkweb.wacchi.plist",
    "~/Library/Saved Application State/io.kkweb.wacchi.savedState",
  ]
end
