cask "reveal" do
  version "48"
  sha256 "292a0eae577cc8860f235ccb0947362efabbcbf3063b8b62fe6c01b8ce049bf8"

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  name "Reveal"
  desc "Powerful runtime view debugging for iOS developers"
  homepage "https://revealapp.com/"

  livecheck do
    url "https://revealapp.com/updates/index.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Reveal.app"

  zap trash: [
    "/Users/Shared/Reveal",
    "~/Library/Application Support/Reveal",
    "~/Library/Caches/com.ittybittyapps.Reveal2",
    "~/Library/Logs/com.ittybittyapps.Reveal2",
    "~/Library/Preferences/com.ittybittyapps.Reveal2.plist",
    "~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState",
  ]
end
