# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.2/turu_{version}_darwin_arm64.tar.gz"
      sha256 "b9787273b09292d2187ab20d9a311dedc4053990b5c1f24ba7ae43ff1f54f692"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.2/turu_{version}_darwin_amd64.tar.gz"
      sha256 "16ab1a7a3aca0ecd27f6c4d3f5e9d443ab250b776c14e20079d5271f674e7c3c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.11.2/turu_{version}_linux_arm64.tar.gz"
        sha256 "10559766e6952b3474e80d6a9c2f2932a5ea1c158ef1fc446993bb051f863228"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.11.2/turu_{version}_linux_amd64.tar.gz"
      sha256 "c3efff6333244558049e3d112cbb5c4131dcd9828b42c897d4304df9fadda161"
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
