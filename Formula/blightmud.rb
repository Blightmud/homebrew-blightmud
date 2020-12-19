class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "2.3.2"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "85335f2c1d9e4e1c9764eda0482a36bc17bba6624aafff8ce6e86fa49aff67a8"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
