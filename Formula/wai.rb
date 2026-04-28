# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.8/wai_2026.4.8_darwin_arm64.tar.gz"
      sha256 "b1bf85147b758580022ce1ccb82de78472248833283c2037b999f84628cd3ecb"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.8/wai_2026.4.8_darwin_amd64.tar.gz"
      sha256 "6abfc363d84691f1a9cc0c3b1a4e2ac4398265957e0e246958ad2fc3f331dacc"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.4.8/wai_2026.4.8_linux_arm64.tar.gz"
        sha256 "05b6e0e76d12f47e36920c3b40df059e9ff65550dddd4611b489d9ea252672a9"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.8/wai_2026.4.8_linux_amd64.tar.gz"
      sha256 "437a2019dfea570305718871c3ac4f98293367e1389ebfea584644df22b81169"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
