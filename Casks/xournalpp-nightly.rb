cask "xournalpp-nightly" do
  version "1.1.0.dev-nightly.20210602"
  sha256 "22287002b2e165e0a9b944c870f771bf5617ace50487ff357b1d0b803bab3d4a"

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
