class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "3.2.1"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "8439c0467d9c8b5881a8e6aa25ebf2994d1c90652b4cfdf0a71e0daa75b79f5a"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
