class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  version "2.2.0"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/LiquidityC/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "571123356bbe5e1fc115915ec662cccc0e8fd09a1f92ffdac316abdd4a5195e3"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
