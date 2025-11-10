cask "kyoshineewviewer" do
  version "0.19.24"
  sha256 "2a57ed65cef78a7db6ad79fdbe674a7e6a4d1a959242e409315e393194200689"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.24/KyoshinEewViewer-macos-arm64.zip"
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
