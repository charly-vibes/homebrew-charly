# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.2/ah_0.12.2_darwin_arm64.tar.gz"
      sha256 "e9adea0be6d9f11f618a3ef48852be1754c1f2ed87169ee629a708a8614d0a0f"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.2/ah_0.12.2_darwin_amd64.tar.gz"
      sha256 "fedebbd3adbfc354a9792cfaf99b3ce9f58443b07307db604b62ea17736c554b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.2/ah_0.12.2_linux_arm64.tar.gz"
        sha256 "62220ee7026046869eaa2ff33718eee25d3a9092455358c726b4bc23d4699213"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.2/ah_0.12.2_linux_amd64.tar.gz"
      sha256 "681f30cd55fd3235e612afe9acd9665dc01a153a449bf1d0229af3760c7ec66d"
    end
  end

  def install
    bin.install "ah"
    bin.install "espectacular"
  end

  test do
    system "\#{bin}/ah", "--version"
  end
end
