# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.9"
  sha256 "b250097c272a99bd68ea707bc222850bda8948a9c606b318212954c0de75ed18"

  url "https://maczentra.com/downloads/MacZentra_#{version}_aarch64.dmg"
  name "MacZentra"
  desc "Storage analyzer and cleaner"
  homepage "https://maczentra.com/"

  livecheck do
    url "https://maczentra.com/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MacZentra.app"

  zap trash: [
    "~/Library/Application Support/com.maczentra.app",
    "~/Library/Caches/com.maczentra.app",
    "~/Library/Preferences/com.maczentra.app.plist",
  ]
end
