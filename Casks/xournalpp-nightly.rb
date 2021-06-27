cask "xournalpp-nightly" do
  version "1.1.0.dev-nightly.20210627"
  sha256 "841fbb57f0030b6a9bdbb23fd7760fb0df7d4ca80cbe838641f951735549fe1f"

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
