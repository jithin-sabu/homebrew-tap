cask "purge" do
  version "1.7.0"
  sha256 "42e9fff0bcb560d5467a364c63672d7b92292b13572e29a7b97b8021114bc311"

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
