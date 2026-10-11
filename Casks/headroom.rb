cask "headroom" do
  version "1.1.0"
  sha256 "cd29c83e04fa35120c60347b5e4509ad6f718ab408791e5eb2dd9d9df1b9be94"

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
