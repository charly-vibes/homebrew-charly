# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.10.0/ah_0.10.0_darwin_arm64.tar.gz"
      sha256 "20a45d9ec00bbf89a3bcb6027d20e579e74bac978646d8e1005392a6f865f24a"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.10.0/ah_0.10.0_darwin_amd64.tar.gz"
      sha256 "0b7e7a55ce973a6b2aa1a7989700e7b8c8015ec6160e75c5f6978b9db83ff28e"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.10.0/ah_0.10.0_linux_arm64.tar.gz"
        sha256 "f8c714c5309eae3754eff4f1552c6841371ca668a1b621ee02540a333dfe7173"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.10.0/ah_0.10.0_linux_amd64.tar.gz"
      sha256 "2d1d718f6b0062299abb68a469fcc11b26f0863941ee105e7ad9ca1f5b37a484"
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
