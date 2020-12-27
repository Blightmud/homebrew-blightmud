class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "2.3.4"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "10df3e8406a33bb8d63415934f6042fd45cfed6b51e959ddc43a984e81b83b99"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
