# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.13.0/pretender_0.13.0_darwin_arm64.tar.gz"
      sha256 "cd1689c6d55e16ef7b587c230dc15166a7c90f30dcfb2dc4a0552415ba99aa89"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.13.0/pretender_0.13.0_darwin_amd64.tar.gz"
      sha256 "71a46e7aa595f31afe4ebd4fd53383e1fc4b63a871c1e54d5d65c3f172544190"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.13.0/pretender_0.13.0_linux_arm64.tar.gz"
        sha256 "c8b4fcf838cc605b2ff246e55800c77345aa6d204671e5c8e070a9434e4c3883"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.13.0/pretender_0.13.0_linux_amd64.tar.gz"
      sha256 "8551914a6ba15709c077f8bb67c08287e21eaefd09faf64d0b943f1ef4882021"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
