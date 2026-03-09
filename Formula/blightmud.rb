class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.4.1"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    on_big_sur do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos-11.zip"
      sha256 "03a533703720a8748a04e25484396b1ef070fc1ca55896939a18e4db0d4afa32"
    end

    on_monterey :or_newer do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
      sha256 "03a533703720a8748a04e25484396b1ef070fc1ca55896939a18e4db0d4afa32"
    end
  end

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
