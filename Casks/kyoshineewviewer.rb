cask "kyoshineewviewer" do
  version "0.19.22"
  sha256 "29914a8fd19f44746fb42b84472e736040286345a43f47b3520220335a154d76"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.22/KyoshinEewViewer-macos-arm64.zip"
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
