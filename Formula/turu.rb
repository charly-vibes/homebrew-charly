# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.8.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "0dd9f0ccfa02f0444ea5cc9ccb1d157d348ae5c5542ea89de1cf73c3fa4937ab"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.8.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "ba9bf622fc556d0ece088274135c42432a5972640f8e085f66130e10067715df"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.8.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "5740da034ed918ca6f0219a829f050407fdf32e5550df23df40f36fcaa4dd84b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.8.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "1da664d652340d7a0e36320973be3b49f475060e0cff6fad959b4883c00c81a5"
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
