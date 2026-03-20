# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.3/wai_2026.3.3_darwin_arm64.tar.gz"
      sha256 "94714a494bf069ea27d63d1d95b3c8b2ca67532e99d68b18732259aeeb13ce9a"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.3/wai_2026.3.3_darwin_amd64.tar.gz"
      sha256 "a3af19693ccf7d88626959ec7d982218241a7638e36a67d189265d3f383372b8"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.3.3/wai_2026.3.3_linux_arm64.tar.gz"
        sha256 "52176a82f4569aa824b3d914f0d4621e1db0d4a44f993efbd94c6fa49ddca515"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.3/wai_2026.3.3_linux_amd64.tar.gz"
      sha256 "6a36635f9509a105d45c2ea4983d2a9f610e88e554a9f2fcc6c5fc64cc82e68e"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
