class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.5.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    on_big_sur do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos-11.zip"
      sha256 "313f310e54d79047c231fcfd0363da428f4e5dfc4a1e76a7139f7346b6f2b74a"
    end

    on_monterey :or_newer do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
      sha256 "313f310e54d79047c231fcfd0363da428f4e5dfc4a1e76a7139f7346b6f2b74a"
    end
  end

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
