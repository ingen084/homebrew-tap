cask "kyoshineewviewer" do
  version "0.21.14"
  sha256 "9acd34c0afd3082fceb7f418abf817f7142e3cdab0c7293e6b9ff84f2cc07788"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.14/KyoshinEewViewer-macos-arm64.zip"
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
