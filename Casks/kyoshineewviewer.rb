cask "kyoshineewviewer" do
  version "0.19.15"
  sha256 "aa07300f00762d3fa313ced8c4c734f7d9c34a4670e6ff9bcb3319ec37c338a7"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.15/KyoshinEewViewer-macos-arm64.zip"
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
