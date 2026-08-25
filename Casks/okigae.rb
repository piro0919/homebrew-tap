cask "okigae" do
  version "0.2.0"
  sha256 "e1783e1c1dd41745edcc5e824713937cee7dc13d4c94a5ee203d77792faa4444"

  url "https://github.com/piro0919/okigae/releases/download/v#{version}/Okigae-#{version}.dmg",
      verified: "github.com/piro0919/okigae/"
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
