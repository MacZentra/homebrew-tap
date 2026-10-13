# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.6"
  sha256 "274fae48a8a20282751a971dd66659a04a3002d7c6658da14bf2023d2dd4763d"

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
