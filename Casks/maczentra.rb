# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.4"
  sha256 "03ed64e01ddc5a29a4cfff2a03d10e3f08deebc644085fa9fe8ec465d2e991a1"

  url "https://maczentra.com/downloads/MacZentra_#{version}_universal.dmg"
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
  depends_on macos: :ventura

  app "MacZentra.app"

  zap trash: [
    "~/Library/Application Support/com.maczentra.app",
    "~/Library/Caches/com.maczentra.app",
    "~/Library/Preferences/com.maczentra.app.plist",
  ]
end
