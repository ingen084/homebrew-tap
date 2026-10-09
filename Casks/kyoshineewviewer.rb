cask "kyoshineewviewer" do
  version "0.21.17"
  sha256 "f3cc8c506ee0e60b0f35103ce628f49024c774d72c90339fbc25f801a07ffee7"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.21.17/KyoshinEewViewer-macos-arm64.zip"
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
