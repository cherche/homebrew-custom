cask "xournalpp-nightly" do
  version "1.1.0.dev-nightly.20210717"
  sha256 "587db6ecc360f98db5f90bbaad721b9f0de61d84abd9b7051988f90ee4af4459"

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
