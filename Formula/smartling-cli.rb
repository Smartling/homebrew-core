class SmartlingCli < Formula
  desc "Command-line tool to interact with Smartling Translation API "
  homepage "https://www.smartling.com/"
  url "https://s3.amazonaws.com/smartling-connectors-releases/cli/smartling.darwin"
  version "0.0.1"
  sha256 "c28236f2c67e2ee722a546a3eb23fa735404d0acd5474e3f80cd620388ea6213"

  bottle :unneeded

  def install
    mv "smartling.darwin", "smartling"
    bin.install "smartling"
  end

  test do
    system "#{bin}/smartling", "--version"
  end
end
