class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  version "2.3.1"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/LiquidityC/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "c37ebea9695c9c5b1dfe65dcbfbe4b020d66156becddb44890ac9e37de40bf30"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
