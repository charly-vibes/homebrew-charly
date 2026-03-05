# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.1/wai_2026.3.1_darwin_arm64.tar.gz"
      sha256 "bb532c4e0cc1fb2188ccb1ce1735e6702d1f7015024ab1267ea0f5df16234339"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.1/wai_2026.3.1_darwin_amd64.tar.gz"
      sha256 "da7c47053d49a65733a795f5cbe37e30693b7c58551680561994838eca578db5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.3.1/wai_2026.3.1_linux_arm64.tar.gz"
        sha256 "c425e097d11d57aa766c3ee8cfb9f6d9d698fc8cd1793df8d9d1b1e52ae175c8"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.1/wai_2026.3.1_linux_amd64.tar.gz"
      sha256 "1007087dbb5d9de830826436e2f1cefa3eb25e6379b18ca98df88ccf168f050f"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
