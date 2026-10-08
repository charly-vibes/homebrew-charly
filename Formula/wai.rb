# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.5/wai_2026.10.5_darwin_arm64.tar.gz"
      sha256 "16f970fb2abab052f4120e3d1a07e5b7ba1dc4c7b34cca9401bad9a90d165704"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.5/wai_2026.10.5_darwin_amd64.tar.gz"
      sha256 "fdfa9e4c7a23ee0442cf11503651522dddf2769f215376f733f34db0119b4f3c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.5/wai_2026.10.5_linux_arm64.tar.gz"
        sha256 "89f4d6a6d6d8c1282511bcb44630ad40d2341883614176610a05e2db68fa7f7d"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.5/wai_2026.10.5_linux_amd64.tar.gz"
      sha256 "5b9edbb13174e90b687bd8ff4841a9ed23266ac5779369ac7bfd0db56f704f5a"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
