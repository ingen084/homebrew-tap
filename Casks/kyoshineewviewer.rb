cask "kyoshineewviewer" do
  version "0.19.17"
  sha256 "24e77570fc68cd06a1da56835c82b15d91f02d1922b66c9d80fa4f22e2942b09"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.19.17/KyoshinEewViewer-macos-arm64.zip"
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
