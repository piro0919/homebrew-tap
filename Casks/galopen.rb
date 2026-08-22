cask "galopen" do
  version "0.6.8"
  sha256 "1b0d194dfb29d1abc6b39568e6c232ca3fcdd9e8d49e56716dedbbce1650f459"

  url "https://github.com/piro0919/galopen/releases/download/v#{version}/Galopen_#{version}_aarch64.dmg"
  name "Galopen"
  desc "Opens meeting URLs from your calendar automatically"
  homepage "https://galopen.kkweb.io"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Galopen.app"

  zap trash: [
    "~/Library/Application Support/com.galopen.desktop",
    "~/Library/Caches/com.galopen.desktop",
    "~/Library/Preferences/com.galopen.desktop.plist",
    "~/Library/Saved Application State/com.galopen.desktop.savedState",
  ]
end
