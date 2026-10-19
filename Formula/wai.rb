# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.11/wai_2026.10.11_darwin_arm64.tar.gz"
      sha256 "e7c96966b43b801c0d60d732b6e9b3e948bac013d833bcfbd968a32528c85107"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.11/wai_2026.10.11_darwin_amd64.tar.gz"
      sha256 "7985ec50f5841485ba5e04a1f8d1ec86491ed209703b204ceab8a2128cfa7a54"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.11/wai_2026.10.11_linux_arm64.tar.gz"
        sha256 "9d2517ec7d7c284c22d14110ade8e59abe666dee80f6b1df9f27921114881a3f"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.11/wai_2026.10.11_linux_amd64.tar.gz"
      sha256 "365d50a956c2372372ef3b758ba95624a33349008e645f5c75f425fcb5231dbe"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
