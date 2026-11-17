# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.3/ah_0.12.3_darwin_arm64.tar.gz"
      sha256 "b6599a70c8825937c7c577225b5d6957c8c3cb42c225d889e5c88016bb80ed10"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.3/ah_0.12.3_darwin_amd64.tar.gz"
      sha256 "e036d1eebf3b733b3130db7cb5300fc1630464461bd4820bd0c8a2f677fe3342"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.3/ah_0.12.3_linux_arm64.tar.gz"
        sha256 "954e6a0c95e89920985f95840baf5b02466d1199133353b4a2203787404eeab8"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.3/ah_0.12.3_linux_amd64.tar.gz"
      sha256 "9f516ec0209722472af21a0b15b4c97a58412843a702890cd1766d51cc901d75"
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
