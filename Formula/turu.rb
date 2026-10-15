# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "77e4dccded95fad336fd851740ec0252cf5ff1ddee1f669f6aae3f2708b5bc57"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "258b96b1bea3ef0b46a48ddcd71deb61ea0a70dd5a1627b1a24ff31e5755bf2a"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.11.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "f69df3dd960b11157a4240ab1c8f83b3432a6813cc6d3d635f8b0d51c05d4e3e"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "19a93abe5121bc5da40f7638644727d6192edfd297e5693d7aa3bf87fb1ee33b"
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
