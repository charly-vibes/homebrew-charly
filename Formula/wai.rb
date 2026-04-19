# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.5/wai_2026.4.5_darwin_arm64.tar.gz"
      sha256 "fc61dfa37c87af888e484d40a44ac12d4f00252e224fc11c036d34123278431a"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.5/wai_2026.4.5_darwin_amd64.tar.gz"
      sha256 "2dd949944936dbac5025d9e24cd3d40f84af011476367faa71e485e4894d2804"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.4.5/wai_2026.4.5_linux_arm64.tar.gz"
        sha256 "a5b280eb69259bdd3030e57e288ced98859fd90a0fdc2d1799d22111c24979de"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.5/wai_2026.4.5_linux_amd64.tar.gz"
      sha256 "8e02d64c7131424747705eb76163c46dbcd89724b3e928fbee5f30cdfc679f14"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
