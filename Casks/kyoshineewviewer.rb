cask "kyoshineewviewer" do
  version "0.21.9"
  sha256 "cab734271de5beab8ab9b9b54088fc2b648c9ed6bd771ead9d0bdf03b4e24600"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.9/KyoshinEewViewer-macos-arm64.zip"
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
