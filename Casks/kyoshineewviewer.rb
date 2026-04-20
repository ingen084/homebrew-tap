cask "kyoshineewviewer" do
  version "0.21.2"
  sha256 "c2c6b59cbf6fc37e34adeb8f39ac9a95f0f534dc99bbef17b67106e4b17c07ec"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.2/KyoshinEewViewer-macos-arm64.zip"
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
