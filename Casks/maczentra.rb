# typed: strict
# frozen_string_literal: true

cask "maczentra" do
  version "1.0.8"
  sha256 "a4c1f729566c2e7bda31a93c7d783f34334b638bf18cfe009ab845024df93850"

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
