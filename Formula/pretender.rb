# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.8.0/pretender_0.8.0_darwin_arm64.tar.gz"
      sha256 "b9b59a904e4b85fc8b65a170bbeb704dee7666f8b468681c80c7a1502cbe84e7"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.8.0/pretender_0.8.0_darwin_amd64.tar.gz"
      sha256 "86f9f0bda3a28601c03a1d72572542e616d6c65fa7c8b72a7a1b060c699b883d"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.8.0/pretender_0.8.0_linux_arm64.tar.gz"
        sha256 "7f77ffc15abf669455eb4953f44d4ecc5b05fcf4c3cc4667c90f0337f3c04a76"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.8.0/pretender_0.8.0_linux_amd64.tar.gz"
      sha256 "2f59aa13b4369ea4f91902fefd3a8487c0256181df9339b6f86fb4d997945519"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
