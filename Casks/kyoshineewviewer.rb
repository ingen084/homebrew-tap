cask "kyoshineewviewer" do
  version "0.19.21"
  sha256 "8d4030990c8b57833d6316a9cfe53f218b3209e6ec909ae2a3e754b03c7a92d1"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.21/KyoshinEewViewer-macos-arm64.zip"
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
