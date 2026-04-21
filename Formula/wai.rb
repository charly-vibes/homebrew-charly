# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.7/wai_2026.4.7_darwin_arm64.tar.gz"
      sha256 "d36ec910bbe434da8f3db0fc820bfe6e283910cdff4bf3f90c37da74eb3a1d6c"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.7/wai_2026.4.7_darwin_amd64.tar.gz"
      sha256 "891a265e1c5718ab1957f3317c61426caf42ce1f7de86b56681394c1360eef7c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.4.7/wai_2026.4.7_linux_arm64.tar.gz"
        sha256 "cb8e0b58ff32b7cde8fdf510f3b2276fb74cf1a568f52d630e0d51c559a214cf"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.7/wai_2026.4.7_linux_amd64.tar.gz"
      sha256 "eb0755e1d5f9c94a08b22f7c3e4c3d298e7c5c1e3422e06955aa8a4ec95f33eb"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
