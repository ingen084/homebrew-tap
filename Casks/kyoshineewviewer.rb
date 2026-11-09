cask "kyoshineewviewer" do
  version "0.22.1"
  sha256 "663ba963897169fd650975eda70851ffc206c8e9cc5eb4b6f0a6e2a589dca642"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.22.1/KyoshinEewViewer-macos-arm64.zip"
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
