cask "kyoshineewviewer" do
  version "0.20.21"
  sha256 "a033a80c97d2f0367d9af0eaceeb5417ebaee303124b1c577da3f412091396eb"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.21/KyoshinEewViewer-macos-arm64.zip"
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
