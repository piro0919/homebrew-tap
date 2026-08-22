cask "chappie" do
  version "0.22.0"
  sha256 "6bd861adfba4db9cd91d133b10cac0cb89a5d9b15e0337e520a1371404466043"

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
  depends_on macos: ">= :big_sur"

  app "Chappie.app"

  uninstall quit: "io.kkweb.chappie"

  zap trash: [
    "~/Library/Application Support/io.kkweb.chappie",
    "~/Library/Caches/io.kkweb.chappie",
    "~/Library/Preferences/io.kkweb.chappie.plist",
    "~/Library/Saved Application State/io.kkweb.chappie.savedState",
  ]
end
