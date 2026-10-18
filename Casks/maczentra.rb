# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.1.2"
  sha256 "50e71197712ccdb55928eae17e311e4f3e7aa069c1cae1171f4bf7328500c8ae"

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
