cask "kyoshineewviewer" do
  version "0.21.20"
  sha256 "3f612b704dd4f76e4131243f2736e11201b012de6cecc897deae99878f83af43"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.20/KyoshinEewViewer-macos-arm64.zip"
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
