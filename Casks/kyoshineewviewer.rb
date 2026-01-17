cask "kyoshineewviewer" do
  version "0.20.23"
  sha256 "6e9e08cdbf6f34930dacd128fd454d349497a677fa530ce89ba5efd465047afb"

  url "https://github.com/ingen084/KyoshinEewViewerIngen/releases/download/0.20.23/KyoshinEewViewer-macos-arm64.zip"
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
