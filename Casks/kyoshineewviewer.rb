cask "kyoshineewviewer" do
  version "0.20.25"
  sha256 "1e05bbd3a6f337537f79a4feae00fd938e40ef1f5191f0cefefc146184212ed9"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.25/KyoshinEewViewer-macos-arm64.zip"
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
