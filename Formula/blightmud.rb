class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  version "2.2.1"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/LiquidityC/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "a6a7f6b4b04d105cd8cabedf3c54d72953075e0cc5e6acead71ac7286ff915b6"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
