class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  version "2.3.0"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/LiquidityC/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "e2dc164652a9dd6a0e857c1369862f998d19f8bb034f12eb331611ace4119791"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
