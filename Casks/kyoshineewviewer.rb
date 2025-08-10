cask "kyoshineewviewer" do
  version "0.19.23"
  sha256 "522b140e7dcd920ce4c07360c402786ef33d49d93565cfcbbf6a59adf1c00363"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.23/KyoshinEewViewer-macos-arm64.zip"
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
