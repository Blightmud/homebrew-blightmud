class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.6.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
    sha256 "c545c74188db9ee6aab012d5fd19ee875dacdf7cf935e7a5e4b20976e1a3fe73"
  end

  def install
    bin.install "blightmud"
    (share/"blightmud/lua/types").install "lua/types/blightmud.d.lua"
    luarc = JSON.generate({
      "$schema" => "https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json",
      "workspace" => { "library" => ["#{share}/blightmud/lua/types"] },
    })
    (share/"blightmud").write("luarc.json", luarc)
  end

  test do
    system bin/"blightmud", "-h"
  end
end
