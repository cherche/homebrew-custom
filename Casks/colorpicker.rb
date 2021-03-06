cask "colorpicker" do
  version "2.0.5"
  sha256 "6459d542b4a0786cb9a81e3bec824fe42c3dbdcff48874e7a02a52e143d4a9e8"

  url "https://github.com/Toinane/colorpicker/releases/download/#{version}/Colorpicker-#{version}.dmg"
  name "colorpicker"
  desc "Minimal but complete colorpicker"
  homepage "https://github.com/Toinane/colorpicker/"

  app "Colorpicker.app"

  zap trash: [
    "~/Library/Application Support/Colorpicker",
  ]
end
