cask "audirvana" do
  version "3.5.40"
  sha256 "d06de8f2259f44c8f18d39b2c338df1ca09a97cb5a02e02fb7a406fb85cbc782"

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
  name "Audirvana"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

  auto_updates true

  app "Audirvana.app"

  zap trash: [
    "/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist",
    "/Library/LaunchDaemons/com.audirvana.SysOptimizerTool.plist",
    "/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus",
    "~/Library/Caches/com.audirvana.Audirvana-Plus",
    "~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies",
    "~/Library/Preferencescom.audirvana.Audirvana.plist",
    "~/Library/Preferences/com.audirvana.Audirvana-Plus.plist",
  ]
end
