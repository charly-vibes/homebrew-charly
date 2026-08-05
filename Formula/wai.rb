# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.8.5/wai_2026.8.5_darwin_arm64.tar.gz"
      sha256 "dcee48817126c47c01664dc32e2adc374606fcb9d5bc91c234b903fb533d0d82"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.8.5/wai_2026.8.5_darwin_amd64.tar.gz"
      sha256 "f0a14f7fe87852c5a69a50275be78914b2220a020e2dc01fb3b30e59c8aec922"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.8.5/wai_2026.8.5_linux_arm64.tar.gz"
        sha256 "81728fd9688a7345c40837561a01d97168fb8588f1a44b2c6c3ea814528d587b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.8.5/wai_2026.8.5_linux_amd64.tar.gz"
      sha256 "e8e3c6ca3760cb7f365dcdd40952a331f6eae379c42b7618dce6fea8bce8b6cb"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
