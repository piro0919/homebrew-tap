cask "wacchi" do
  version "0.1.1"
  sha256 "3440d38f53218a21a22175859b9cf6694a66ed675bdd8938fa309085cc5ef8ba"

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
