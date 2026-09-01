cask "kyoshineewviewer" do
  version "0.21.16"
  sha256 "cb60876a72938f89b80b34f6ac95c446e16642adeda13e7613a45c762f1d0aba"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.16/KyoshinEewViewer-macos-arm64.zip"
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
