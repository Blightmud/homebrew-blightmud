class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.2.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    on_big_sur do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos-11.zip"
      sha256 "8f6e089a59745afe6c07d82c9db7417e728bdab550e25db3d3c82aac8a872939"
    end

    on_monterey :or_newer do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
      sha256 "c6c325c5b6ad67fcb2b7eb7cadf63fbdda00bfae3d0ce26c50f83743ef8e5805"
    end
  end

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
