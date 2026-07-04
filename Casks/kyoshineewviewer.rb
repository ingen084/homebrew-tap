cask "kyoshineewviewer" do
  version "0.21.7"
  sha256 "7e8e0c0e6c7b79640ed72069de0c66abc0258272e22ee33dd9272846894bcecd"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.7/KyoshinEewViewer-macos-arm64.zip"
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
