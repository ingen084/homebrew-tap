cask "kyoshineewviewer" do
  version "0.22.4"
  sha256 "6db57253339e194bc734050b0472ed0036c7f826cf4bb9c05d839c5b54e0afaf"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.22.4/KyoshinEewViewer-macos-arm64.zip"
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
