# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.9.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.9.28/wai_2026.9.28_darwin_arm64.tar.gz"
      sha256 "37ae359698a219507ca01542d9567d6f417441fa3a84b7188a04b796b6c7e5c0"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.9.28/wai_2026.9.28_darwin_amd64.tar.gz"
      sha256 "c0b3e251a5ff24399f2a5b92c8b4554ada03cb05bb87d2d20479293697c1364d"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.9.28/wai_2026.9.28_linux_arm64.tar.gz"
        sha256 "e5c70aaae145001b1b64e7efe8f92550fa401d6bd7a8225a35f2c0755a44589e"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.9.28/wai_2026.9.28_linux_amd64.tar.gz"
      sha256 "ed64b55c60f6383487cd4d5cf61c2b1c95165da8ffde611a89686d89ddb62aad"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
