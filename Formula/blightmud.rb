class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "3.2.0"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "32a25bcf7aceb4d9fd8a3063228e9676fe6c828e6acb9e02425c0a98c51e4080"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
