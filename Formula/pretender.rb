# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.6.0/pretender_0.6.0_darwin_arm64.tar.gz"
      sha256 "cd15e8822ac21517170c0a6f0c9711bf52badcc344811d30b358610d6c5fa244"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.6.0/pretender_0.6.0_darwin_amd64.tar.gz"
      sha256 "e8e0ff91aedd77f1d2a700253e879373d5cf9aec69264f23cd770ed15d50ca6e"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.6.0/pretender_0.6.0_linux_arm64.tar.gz"
        sha256 "fdffdfe7ca4351542cf70080b1352edbc8527ca9d4b0f5489c2fcc129bcda660"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.6.0/pretender_0.6.0_linux_amd64.tar.gz"
      sha256 "5de6f544eec3fff9c2b13dbf9231c07bba1d522897123b6550e7c33be24a5328"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
