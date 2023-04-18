class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.2.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "c6c325c5b6ad67fcb2b7eb7cadf63fbdda00bfae3d0ce26c50f83743ef8e5805"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
