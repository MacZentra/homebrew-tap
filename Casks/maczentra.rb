# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.2.0"
  sha256 "56cae3ecfba2c53d84498390f0a0374800a2c723abca5faafa7a94913604f44a"

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
