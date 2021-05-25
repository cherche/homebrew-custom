cask "xournalpp-nightly" do
  version "1.1.0.dev-nightly.20210429"
  sha256 "b12f7eb2d9200da7c2c3fcf325a78a0cd8cd8686e62bd0f2af3e8b26afd9d036"

  url "https://github.com/xournalpp/xournalpp/releases/download/nightly/xournalpp-#{version}-macos.zip"
  # url "https://github.com/xournalpp/xournalpp/releases/download/#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.xournalpp",
  ]
end
