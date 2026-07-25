cask "purge" do
  version "1.2.9"
  sha256 "6a26937cb8ed234fdc1b22095cc80a9c4cd08ed9dff381eb4f49e6db268a0633"

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
