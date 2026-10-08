cask "headroom" do
  version "1.0.5"
  sha256 "68533f9946bd331b3ef8fd921805a5b3ab12c8b2442e8636405449092fa25b45"

  url "https://github.com/Ryware/Headroom/releases/download/v#{version}/Headroom-#{version}.dmg"
  name "Headroom"
  desc "Disk space analyser with treemap, safety guidance and developer cleanup"
  homepage "https://github.com/Ryware/Headroom"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Headroom.app"

  zap trash: [
    "~/Library/Application Support/Headroom",
    "~/Library/Caches/dev.ryware.disktree",
    "~/Library/HTTPStorages/dev.ryware.disktree",
    "~/Library/Preferences/dev.ryware.disktree.plist",
    "~/Library/Saved Application State/dev.ryware.disktree.savedState",
  ]
end
