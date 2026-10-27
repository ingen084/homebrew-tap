cask "kyoshineewviewer" do
  version "0.21.19"
  sha256 "dafe59a9dbfe9d1d1ae10d7c6dda0784d2222df61c00fc6c60e5e0ba80a49d07"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.19/KyoshinEewViewer-macos-arm64.zip"
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
