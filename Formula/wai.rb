# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.2/wai_2026.4.2_darwin_arm64.tar.gz"
      sha256 "f42fa816abeb65e990f437530c0b69ec5bcb9149989242a8e002975db2c49543"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.2/wai_2026.4.2_darwin_amd64.tar.gz"
      sha256 "703c08fffb4ea2413ef69531f395b738800b49c9d8ae3ef220055d06854333fa"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.4.2/wai_2026.4.2_linux_arm64.tar.gz"
        sha256 "aee884b5796c7c2490c4df19bfc7aaffe2854c0955682ab7955778a5e7b09841"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.2/wai_2026.4.2_linux_amd64.tar.gz"
      sha256 "921a22b4d2b2dda7fb55cdf748445d565f11cc1957ed9872f89fbe0a9145a610"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
