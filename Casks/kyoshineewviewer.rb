cask "kyoshineewviewer" do
  version "0.19.14"
  sha256 "171e4efa386478e85274e54ac207bcd02902e66f7cb6aa0cf855c1a51aaefadb"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.14/KyoshinEewViewer-macos-arm64.zip"
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
