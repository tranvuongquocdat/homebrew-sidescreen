cask "sidescreen" do
  version "1.0.1"
  sha256 "f37ecd744665fb16bf6e1b7439f607c7771f5c428dc33cb830f7e36f43ad1d78"

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
    clear the quarantine flag:
      xattr -cr "#{appdir}/SideScreen.app"
    or reinstall without it:
      brew reinstall --cask --no-quarantine sidescreen
  EOS
end
