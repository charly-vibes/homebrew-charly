# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.3.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "5a41f281a3a434db028557ef2add47be3c7ddcf91e7a9899e7bd6c1c290033dd"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.3.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "f13a7164c3169aa096e75431ae88596b0d48a732bb462b4e76affaf57c0ec6c9"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.3.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "a5b228b08c9faa0d8a60c5c5ab2c22ec95a2bffc60d57b0998cc5d5324d49f74"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.3.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "b4e60e191163c3e6191f91271039ef87e37d5b148f78510fa7ab539b3ea016ed"
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
