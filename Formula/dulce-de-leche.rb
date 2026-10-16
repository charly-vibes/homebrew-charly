# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.9.0/ddl_0.9.0_darwin_arm64.tar.gz"
      sha256 "c6e5cf31b92a941b10f0853b626ec4f9525fe2ee3335596d9db6d0e09be7d515"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.9.0/ddl_0.9.0_darwin_amd64.tar.gz"
      sha256 "b349273297b2a558f27bfb3ab61e307ea2c9a315e9268e983837f75970558ca7"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.9.0/ddl_0.9.0_linux_arm64.tar.gz"
        sha256 "98d62c97185398c603d7b8fab6079bedef6037d093b140daba2cb538a000e28c"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.9.0/ddl_0.9.0_linux_amd64.tar.gz"
      sha256 "6fb4785c8cdc99c48f29f83c28087364517a0216578c43c7742f64884b444503"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "\#{bin}/ddl", "--version"
  end
end
