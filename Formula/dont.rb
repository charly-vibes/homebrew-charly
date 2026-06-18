# typed: false
# frozen_string_literal: true

class Dont < Formula
  desc "Epistemic discipline CLI for autonomous LLM agent workflows"
  homepage "https://github.com/charly-vibes/dont"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dont/releases/download/v0.0.0/dont_0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/charly-vibes/dont/releases/download/v0.0.0/dont_0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dont/releases/download/v0.0.0/dont_0.0.0_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dont/releases/download/v0.0.0/dont_0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "dont"
  end

  test do
    system "#{bin}/dont", "--version"
  end
end
