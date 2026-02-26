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
      sha256 "551dbda8597cc41e81de0b95d23c09046822701a0b57e9cae9dcd2775145c328"
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_darwin_amd64.tar.gz"
      sha256 "b79ece1731feab6d1b39aac77466bf6f0af5d20ad9bcb4d96fc9046d3de14308"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_arm64.tar.gz"
        sha256 "f31e3e161b763e083f3136b2f4c393d83b74675eda115c2d953184229f0990ab"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_amd64.tar.gz"
      sha256 "c9c7c1d089d67e1935fc508ceaefb8b971a6e33de49ca4aa9fc48ff6ee0a25d9"
    end
  end

  def install
    bin.install "fotos-mcp"
  end

  test do
    system "\#{bin}/fotos-mcp", "--version"
  end
end
