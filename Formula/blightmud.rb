class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.3.3"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    on_big_sur do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos-11.zip"
      sha256 "4d196a9675caf0e5d861435a7a1085e4a12dfa675a622c97886240222a7795f5"
    end

    on_monterey :or_newer do
      url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
      sha256 "4d196a9675caf0e5d861435a7a1085e4a12dfa675a622c97886240222a7795f5"
    end
  end

  def install
    bin.install "blightmud"
  end

  test do
    system bin/"blightmud", "-h"
  end
end
