# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.4.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "036df0a162b2cbc4495ccfa7780db4e2da30c2cb1de10d31ede29c6c41e282c7"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.4.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "739108b5abddc92d2a62602ee1077d1a3020ae101c3fee99630440964f85e7f1"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.4.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "5fa04c9b39f23e9b81a1127dcdbf4cdd78cf5690676e4c95aaa1530758b7ddfd"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.4.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "f7d73e281f8407967b09b68cb98903d07a7f2e9db6d6ce69a7a57e6ef7437432"
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
