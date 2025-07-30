cask "kyoshineewviewer" do
  version "0.19.20"
  sha256 "d34f725979fed3e1f3f4aa0aaea25bee093ae08bfc72771a89bd3f71c9a87176"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.20/KyoshinEewViewer-macos-arm64.zip"
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
