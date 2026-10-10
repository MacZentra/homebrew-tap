# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.3"
  sha256 "43e5979e48865a9b3e4a0a1d80626e8031bdcc2297a39b823f7f28ec020c61aa"

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
