# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.9.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "b4839657dc7d628d1b58acbd9c8e43293d5b2942c657f856c81f76d45ac8edff"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.9.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "e4b762cd2ed63b1ccc9f22d9495d670196ed255db8a283f66e6b4f353ce56367"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.9.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "bd2708b2e0933112aef6f29e723b22daac6ebea77d5415156a5b0eb3b9e4996a"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.9.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "8bf7c8c973cac13f025c846dc95b18c78a5c4e0f7ddd0c6d97127c864ee1411d"
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
