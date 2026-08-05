cask "kyoshineewviewer" do
  version "0.21.13"
  sha256 "3e20dfb92c975a2cd0126b0e618b8fab11a3d0758a3738fae148efdf9f1b214d"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.13/KyoshinEewViewer-macos-arm64.zip"
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
