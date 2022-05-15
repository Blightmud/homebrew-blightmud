class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "3.6.1"
  license "GPL-3.0-only"
  depends_on "openssl"

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "e3da9f7811a05123cb2efec665ee7c63b349c0c683cc68311ca2110094d5ed45"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
