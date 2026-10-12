# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.5"
  sha256 "e06b1cad777ecf7da201eba39718122ced6035946a7264142a11d60ec88dd571"

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
