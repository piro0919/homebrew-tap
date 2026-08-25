cask "macopy" do
  version "0.4.0"
  sha256 "1fbfffe43aeaea8ce7e16bc5134242e30c57793332d0cc73471017818711e839"

  url "https://github.com/piro0919/macopy/releases/download/v#{version}/Macopy_#{version}_aarch64.dmg",
      verified: "github.com/piro0919/macopy/"
  name "Macopy"
  desc "Minimal clipboard history tool"
  homepage "https://macopy.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Macopy.app"

  uninstall quit: "com.example.macopy"

  zap trash: [
    "~/Library/Application Support/com.example.macopy",
    "~/Library/Caches/com.example.macopy",
    "~/Library/Preferences/com.example.macopy.plist",
    "~/Library/Saved Application State/com.example.macopy.savedState",
  ]
end
