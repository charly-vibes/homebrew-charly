# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.7.0/ddl_0.7.0_darwin_arm64.tar.gz"
      sha256 "ccb1d54275ea7dc57bcf658c7d560c04c5e04bde4ae963f7ac181793f63da3fd"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.7.0/ddl_0.7.0_darwin_amd64.tar.gz"
      sha256 "5a74abab99b4b43f202ea0e2913696dbfd152f867c56a58dadbf08afa0742ba8"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.7.0/ddl_0.7.0_linux_arm64.tar.gz"
        sha256 "1e8dc6a2e3d3fad9b75343cc4bfe91e03e31dc4fa83cd1c74ed1a83698258866"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.7.0/ddl_0.7.0_linux_amd64.tar.gz"
      sha256 "d2a6a8a13a0afd1c82fab542d9fd285bb9939b0066a1075e57bdb0b4b9022cfc"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "#{bin}/ddl", "--version"
  end
end
