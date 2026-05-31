class Blightmud < Formula
  desc "Terminal mud client written in Rust"
  homepage "https://github.com/Blightmud/Blightmud"
  version "5.7.1"
  license "GPL-3.0-only"
  depends_on "openssl"

  if OS.mac?
    url "https://github.com/Blightmud/Blightmud/releases/download/v#{version}/blightmud-v#{version}-macos.zip"
    sha256 "a57dd0b31c7bd8d3d95126b7dfb57abdfd3b4f6da6e41ae422ce1611200df21e"
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
