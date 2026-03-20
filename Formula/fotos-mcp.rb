# typed: false
# frozen_string_literal: true

class FotosMcp < Formula
  desc "MCP server for Fotos — AI-powered screenshot tool"
  homepage "https://github.com/charly-vibes/fotos"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_darwin_arm64.tar.gz"
      sha256 "2ae88e6b9111f30accf7854865c0c2069bab33480dd45882c34b85823dcbc8f3"
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_darwin_amd64.tar.gz"
      sha256 "f2a33dbbef9f95a60543796e1c5bfb119ee5b62c4b9dfd451dc023d9657fa365"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_arm64.tar.gz"
        sha256 "70419df070ebfdc1632ecef5195b6458253e3d3cd5fbd84ef411369f7f315589"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_amd64.tar.gz"
      sha256 "0bc32d2d711f2085242c676c863a5ac36d1255b58648f2ee2b1aef6ba5e6b76c"
    end
  end

  def install
    bin.install "fotos-mcp"
  end

  test do
    system "\#{bin}/fotos-mcp", "--version"
  end
end
