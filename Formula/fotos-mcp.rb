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
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos-mcp_0.3.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "fotos-mcp"
  end

  test do
    system "#{bin}/fotos-mcp", "--version"
  end
end
