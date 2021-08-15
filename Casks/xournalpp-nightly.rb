cask "xournalpp-nightly" do
  version "1.1.0-nightly.20210810"
  sha256 "6698efd587b8e71fc1e7f754a5d816b4c1d0c9f7c44fac59b8c32ae8a0dc666a"

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
