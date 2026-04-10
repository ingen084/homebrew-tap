cask "kyoshineewviewer" do
  version "0.21.1"
  sha256 "b8e4620853aa2d5e2478d297bbefcb41bedf3eeaebba1a6a1f8dab93db8571d8"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.1/KyoshinEewViewer-macos-arm64.zip"
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
