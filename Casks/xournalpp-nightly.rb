cask "xournalpp-nightly" do
  version "1.1.0.dev-nightly.20210618"
  sha256 "68c0b3152d875f2ad0b0b4134da96fc98d3b7e02a6aa4d604ac9850ecc62ee46"

  url "https://github.com/xournalpp/xournalpp/releases/download/nightly/xournalpp-#{version}-macos.zip"
  # url "https://github.com/xournalpp/xournalpp/releases/download/#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.config/xournalpp",
  ]
end
