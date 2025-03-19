cask "kyoshineewviewer" do
  version "0.19.12"
  sha256 "4211c2eb5d177b34f14a625e46fec2cf06d9791482fc3d12df112507773828a6"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/#{version}/KyoshinEewViewer-macos-arm64.zip"
  name "KyoshinEewViewer for ingen"
  desc "Custom client for Kyoshin Monitor"
  homepage "https://svs.ingen084.net/kyoshineewviewer/"

  livecheck do
    url :url
    strategy :github_latest do |json, regex|
      json["tag_name"]
    end
  end

  app "KyoshinEewViewer.Desktop.app"
end
