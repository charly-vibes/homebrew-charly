# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.5.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "a76c203c7fbad2c2e1b761edbdbb10c0bbdc0a20757fa7f41b877c5b003b64fd"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.5.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "7e3a086f4105fa9207f09fdf22c3a593ab3808b67cc114455f26ad020cc95276"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.5.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "9b354e66be1bd853850f7f7e96524cf4967c148ccdaee2eb750287d46f27346b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.5.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "a5373d67a001b60322d8003382f4a96e310bc5748644423c9a816fb294eef614"
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
