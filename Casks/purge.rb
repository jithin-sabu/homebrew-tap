cask "purge" do
  version "1.9.0"
  sha256 "03f396756cfa54c97e31823d84d4ef85cd31b4ac3bde2a05d203c7bc03fa7755"

  url "https://github.com/jithin-sabu/purge-app/releases/download/v#{version}/Purgev#{version}.dmg"
  name "Purge"
  desc "Free up your Mac safely by clearing cache and junk to the Trash"
  homepage "https://github.com/jithin-sabu/purge-app"

  app "Purge.app"

  zap trash: [
    "~/Library/Application Support/io.getpurge.app",
    "~/Library/Caches/io.getpurge.app",
    "~/Library/Preferences/io.getpurge.app.plist",
    "~/Library/Saved Application State/io.getpurge.app.savedState",
  ]
end
