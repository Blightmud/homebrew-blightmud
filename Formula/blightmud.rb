class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.6.0"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
    sha256 "b5bd6e67b3fade1ef49cb28eebefc431540be4d33eb5b1ba4a038da12773db34"
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
