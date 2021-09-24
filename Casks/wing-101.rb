cask "wing-101" do
  version "8.0.3.0"

  if Hardware::CPU.intel?
    sha256 "67fca5ab5ae9d441d36c1705edcc584e74f614222a17b64de6a051fe3c9a3aea"

    url "https://wingware.com/pub/wing-101/#{version}/wing-101-#{version}-intel.dmg"
  else
    sha256 "b7b9f3bdfb620b1cbe8fd51c4ebe31a3a973bc46f2bff8543b4886c9d6fef0e1"

    url "https://wingware.com/pub/wing-101/#{version}/wing-101-#{version}-arm64.dmg"
  end

  name "Wing 101"
  desc "Free simple Python IDE designed for beginning programmers"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/pub/wing-101/"
    regex(%r{href="(\d+(?:\.\d+)*)/"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Wing 101.app"
end
