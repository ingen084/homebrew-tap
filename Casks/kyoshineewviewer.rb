cask "kyoshineewviewer" do
  version "0.20.20"
  sha256 "49d52fa0faf450d581fa25befb58703243c5e05d6b7fe089dc3b69ed9558e2e4"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.20/KyoshinEewViewer-macos-arm64.zip"
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
