class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  version "2.1.0"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/LiquidityC/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "67ba01afa5da8401e2edb06721560f3f3f33f645eea145dbd1846fc4e47d97af"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
