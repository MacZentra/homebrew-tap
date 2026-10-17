# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.10"
  sha256 "9541a17b66562373261ebd60c7534a5c45a1b5186030be11972fe470d122cd9d"

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
