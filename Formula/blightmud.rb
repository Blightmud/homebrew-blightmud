class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.3.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    on_big_sur do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos-11.zip"
      sha256 "628b79dd1dddcabb0faa512d3a1c945e4a11ef85728f6614dbc808e1a997036c"
    end

    on_monterey :or_newer do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
      sha256 "628b79dd1dddcabb0faa512d3a1c945e4a11ef85728f6614dbc808e1a997036c"
    end
  end

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
