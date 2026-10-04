cask "purge" do
  version "1.7.1"
  sha256 "51d9ab68205732ad7d1e06288aea296f27b49748be9b2526193c80f2fac95fea"

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
