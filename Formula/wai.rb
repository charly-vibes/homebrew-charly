# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.4/wai_2026.10.4_darwin_arm64.tar.gz"
      sha256 "f5c100c8f33f14e2faf1fee9735588272eccecbb2ded71e98489b0ed4ab03cec"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.4/wai_2026.10.4_darwin_amd64.tar.gz"
      sha256 "2df4548ac62cb3b44c3488b0f1ca5cb3343a23bb611802a60e1920f28a3a2245"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.4/wai_2026.10.4_linux_arm64.tar.gz"
        sha256 "5fb9e81df75e86d5a9149e8f3c6fbdb43eb7d19715f0475bd48b7ba64c3832ac"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.4/wai_2026.10.4_linux_amd64.tar.gz"
      sha256 "4621be926c8e91c36e582e1c0ef18aaaa34dc99c6bdbcea3ce557582421e7bfd"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
