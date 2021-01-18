class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "3.0.0"
  license "GPL-3.0-only"
  bottle :unneeded

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "a30551039d997b850de2f62b8a24d038e2bd582a4de0e5770b6d4206beffdb0c"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
