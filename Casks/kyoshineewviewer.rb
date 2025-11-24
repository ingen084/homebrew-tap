cask "kyoshineewviewer" do
  version "0.20.11"
  sha256 "f79348a1699bc84e8398f93a18e5b36992a2e48a545370b32449c027cc54835a"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.11/KyoshinEewViewer-macos-arm64.zip"
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
