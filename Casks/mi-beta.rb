cask "mi-beta" do
  version "3.6.3,1139"
  sha256 "169e1820889f65469eb29c5627ebaf26a308ecd3877086869c8db9d6b2dde96e"

  url "https://www.mimikaki.net/download/mi#{version.csv.first}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle
  end

  conflicts_with cask: "mi"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
