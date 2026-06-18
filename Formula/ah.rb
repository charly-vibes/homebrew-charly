# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.0.0/ah_0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.0.0/ah_0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.0.0/ah_0.0.0_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.0.0/ah_0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ah"
  end

  test do
    system "#{bin}/ah", "--version"
  end
end
