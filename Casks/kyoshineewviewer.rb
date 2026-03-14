cask "kyoshineewviewer" do
  version "0.20.26"
  sha256 "47d640dd7746d07e9c7c5817dd64f067a592f51888e0fbb703bb488732d223fc"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.26/KyoshinEewViewer-macos-arm64.zip"
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
