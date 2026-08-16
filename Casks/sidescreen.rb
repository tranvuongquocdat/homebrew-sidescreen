cask "sidescreen" do
  version "0.11.1"
  sha256 "8eb872ddaea3099d5269d5d837b06549acc3faf3160b53cdc005330744fe298b"

  url "https://github.com/tranvuongquocdat/SideScreen/releases/download/#{version}/SideScreen-#{version}-mac-universal.dmg"
  name "Side Screen"
  desc "Use an Android tablet as a low-latency second display over USB or WiFi"
  homepage "https://www.sidescreen.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SideScreen.app"

  zap trash: "~/Library/Preferences/com.sidescreen.app.plist"

  caveats <<~EOS
    Side Screen is not notarized yet. If macOS blocks the first launch,
    install with:
      brew install --cask --no-quarantine sidescreen
    or clear the quarantine flag after installing:
      xattr -cr /Applications/SideScreen.app
  EOS
end
