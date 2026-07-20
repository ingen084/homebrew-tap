cask "kyoshineewviewer" do
  version "0.21.10"
  sha256 "a3a8075bcb8e88c951bdc4bb2eecc7f037b99e1f6c66c779520a57fe475421c7"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.10/KyoshinEewViewer-macos-arm64.zip"
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
