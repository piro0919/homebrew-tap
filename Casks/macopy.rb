cask "macopy" do
  version "0.3.0"
  sha256 "7e0bdd31f46ccb576608ea861542aca163c76a0060aca3d9d81cb2f1b92dc673"

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
  depends_on macos: ">= :catalina"

  app "Macopy.app"

  uninstall quit: "com.example.macopy"

  zap trash: [
    "~/Library/Application Support/com.example.macopy",
    "~/Library/Caches/com.example.macopy",
    "~/Library/Preferences/com.example.macopy.plist",
    "~/Library/Saved Application State/com.example.macopy.savedState",
  ]
end
