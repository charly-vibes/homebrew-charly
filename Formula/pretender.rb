# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.1/pretender_0.7.1_darwin_arm64.tar.gz"
      sha256 "2d7c9b2765ff364bb220bbdb882e2dfb0b64856f8cfc1d22f4a5b145192dc6f6"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.1/pretender_0.7.1_darwin_amd64.tar.gz"
      sha256 "f979cdfceec132428dec262e9298fc7928ff5ca85253e5448f2007071d13723e"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.7.1/pretender_0.7.1_linux_arm64.tar.gz"
        sha256 "f5654b58e8747faf0582df0a1cb3abb517c8aaf1a7f05f0dda209074de795122"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.1/pretender_0.7.1_linux_amd64.tar.gz"
      sha256 "56dfdd5d6ba8f8731525a8fae19826d127274b8a15f7240e385eaa6d504c5f21"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
