class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "3.4.0"
  license "GPL-3.0-only"
  bottle :unneeded
  depends_on "openssl"

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "0aa079c0da8c94752b9bafcd5b039440249d774b152b7d869dee45f203931a6d"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
