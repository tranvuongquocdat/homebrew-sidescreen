cask "sidescreen" do
  version "1.1.0"
  sha256 "f9d5caf15f6e1dfffe8ecf3a691aad03cc5efac2facaaff3a70d8252affbf075"

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

    Side Screen is not notarized yet. If macOS blocks the first launch,
    clear the quarantine flag:
      xattr -cr "#{appdir}/SideScreen.app"
    or reinstall without it:
      brew reinstall --cask --no-quarantine sidescreen
  EOS
end
