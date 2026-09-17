# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.6.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "f8ccb9e47f68745200be51657c007800c0c5a5b5a1cc5f3360fac0287894ef65"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.6.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "d3467d66326575cef7be58e7b57fdbe58c6f24a3ae66023e010ccfb13174fcf7"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.6.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "b2baaf16fc766fe9c66d01af1ddbe82293e14f1839585e86e96733f26e7cf981"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.6.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "5d318f53504f11e16484cb90c28605fad8acd005449dfe23575d1eda55a26fa3"
    end
  end

  def install
    bin.install "turu"
    bin.install "turututu"
    bin.install "whisper"
  end

  test do
    system "#{bin}/turu", "--version"
  end
end
