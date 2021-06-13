class AirshipperBinary < Formula
  desc "Launcher for Veloren voxel game"
  homepage "https://github.com/Songtronix/Airshipper/"
  version "0.4.2"
  url "https://github.com/Songtronix/Airshipper/releases/download/v#{version}/airshipper-macos.tar.gz"
  sha256 "83dae4e0790a1123f6e32d623f2e0ef0bb1458f092bd907bd2be2159338165b2"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/airshipper")
  end

  def caveats; <<~EOS
    Executable is linked as "airshipper".
    EOS
  end

  zap trash: [
    "~/Library/Application Support/airshipper/"
  ]
end
