cask "kyoshineewviewer" do
  version "0.20.27"
  sha256 "3a414f93d320cd0ab962db22d8450dfe715368868beeec086f5b815913cada8e"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.27/KyoshinEewViewer-macos-arm64.zip"
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
