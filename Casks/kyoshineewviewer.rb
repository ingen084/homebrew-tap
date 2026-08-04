cask "kyoshineewviewer" do
  version "0.21.11"
  sha256 "aa662e3cc503be6e41c358bd7a5f27d30e1a73acedea7e45a0aa02fe000c6c80"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.11/KyoshinEewViewer-macos-arm64.zip"
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
