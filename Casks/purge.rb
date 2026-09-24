cask "purge" do
  version "1.5.3"
  sha256 "ea9b4272c42d312b93a27a1284f8132ed48c68cc01f8846a1632608e2b0e165e"

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
