class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.0.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
  sha256 "5f49ee4c58c8528a08d70b989b888996f6ba8aca8f061a034754043dd6c685a7"

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
