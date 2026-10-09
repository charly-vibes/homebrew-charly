# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.8.0/ddl_0.8.0_darwin_arm64.tar.gz"
      sha256 "1cf8dc24d3e536af13d56b539951b8a0eb2acbeab88d7d4f864723b54c2782ac"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.8.0/ddl_0.8.0_darwin_amd64.tar.gz"
      sha256 "815012f6ee5cf450bef897ce4a55b18359066313c7f4a048d24c02c452315c87"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.8.0/ddl_0.8.0_linux_arm64.tar.gz"
        sha256 "ed96e86fa9ac02803f52d96ef01e387f59812430c6f74b1e9e905deee3ca3cbe"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.8.0/ddl_0.8.0_linux_amd64.tar.gz"
      sha256 "11a94dbf2d277a81f6811c422b9d516c484e4c4a290c54ec953f3542bb00d675"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "\#{bin}/ddl", "--version"
  end
end
