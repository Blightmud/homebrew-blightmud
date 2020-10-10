class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/LiquidityC/Blightmud"
  url "https://github.com/LiquidityC/Blightmud/archive/v2.0.0.tar.gz"
  sha256 "0fdda39c8b9524031cf0098211354fa62bb89a5d8af2af64f213fb4cac0d25d5"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"blightmud", "-h"
  end
end
