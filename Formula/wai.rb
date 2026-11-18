# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.11.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.17/wai_2026.11.17_darwin_arm64.tar.gz"
      sha256 "3661580a3bff3bf5594fc3925f8f6387986a3d3bc4c7a4db18e3ab2775c3f226"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.17/wai_2026.11.17_darwin_amd64.tar.gz"
      sha256 "8e94558c237677e6c5af44e6bf2abd5d7c26aab8f917640a5c398b9c255317a9"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.11.17/wai_2026.11.17_linux_arm64.tar.gz"
        sha256 "5c4b41564061917199a76a39000242c6b5780c51ac71547ee3c79bd53731b837"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.17/wai_2026.11.17_linux_amd64.tar.gz"
      sha256 "e3bee2e9c4526db8e4a468b5af0aa366e862be310eb243bec7a7b31260d8bfae"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
