cask "sidescreen" do
  version "1.1.1"
  sha256 "802c20151c54085f243c8c6a12215559086314222ddcbeddd56cfb4358e6f9b9"

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
end
