class AirshipperBinary < Formula
  desc "Launcher for Veloren voxel game"
  homepage "https://github.com/veloren/Airshipper/"
  version "0.5.0"
  url "https://github.com/veloren/Airshipper/releases/download/v#{version}/airshipper-macos.tar.gz"
  sha256 "43f7de3b252beabb4c8060c792cb63f7f14498a81dcebc2cf68375c38c3fceb1"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/airshipper")
  end

  def caveats; <<~EOS
    Executable is linked as "airshipper".
    EOS
  end

  #zap trash: [
    #"~/Library/Application Support/airshipper/"
  #]
end
