# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.5/wai_2026.3.5_darwin_arm64.tar.gz"
      sha256 "2a86fc541356ae0f6cfb6f95164d0f4840cbf57cdaa46dc9fff9272522ae2b85"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.5/wai_2026.3.5_darwin_amd64.tar.gz"
      sha256 "92e3d412067ea9a13f01d30badfa999f42f0fd0ba2055cfa13689312dcdc1eaa"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.3.5/wai_2026.3.5_linux_arm64.tar.gz"
        sha256 "1d0da28ba5063d78bce14fc401c1f309673c071e0ed5d438e7496286e38325cb"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.5/wai_2026.3.5_linux_amd64.tar.gz"
      sha256 "62b67692bf7fd2a2cad2c63c1b2ce311a2e6db47267a5dc7ebd0f0df07eacbeb"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
