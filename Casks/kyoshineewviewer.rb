cask "kyoshineewviewer" do
  version "0.19.19"
  sha256 "13f5d3fb094b4f5543ffdaad8d371b6f6c81a285f2151c2162867a7d84422a07"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.19/KyoshinEewViewer-macos-arm64.zip"
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
