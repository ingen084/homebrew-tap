cask "kyoshineewviewer" do
  version "0.19.13"
  sha256 "b570ccbdd3bd33b31264ff3b1c83bd2cacbc99cc676ff526fb9706494902db00"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.13/KyoshinEewViewer-macos-arm64.zip"
  name "KyoshinEewViewer for ingen"
  desc "Custom client for kyoshin-monitor"
  homepage "https://github.com/ingen084/KyoshinEewViewerIngen"

  livecheck do
    url :url
    strategy :github_latest do |json, regex|
      json["tag_name"]
    end
  end

  app "KyoshinEewViewer.Desktop.app"
end
