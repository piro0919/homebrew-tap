cask "chappie" do
  version "0.23.0"
  sha256 "5ae4bc86bf8a9840a0fa0fef985076383e12bc6c6c4f1c2f24eae84e0e0da7b2"

  url "https://github.com/piro0919/chappie/releases/download/v#{version}/Chappie_#{version}_aarch64.dmg",
      verified: "github.com/piro0919/chappie/"
  name "Chappie"
  desc "Hands-free voice AI assistant that lives in the menu bar"
  homepage "https://chappie.kkweb.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Chappie.app"

  uninstall quit: "io.kkweb.chappie"

  zap trash: [
    "~/Library/Application Support/io.kkweb.chappie",
    "~/Library/Caches/io.kkweb.chappie",
    "~/Library/Preferences/io.kkweb.chappie.plist",
    "~/Library/Saved Application State/io.kkweb.chappie.savedState",
  ]
end
