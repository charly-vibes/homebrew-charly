# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral specification testing"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.5.0/ah_0.5.0_darwin_arm64.tar.gz"
      sha256 "f19dbb66fab03cba9001ea4346f05c01a934e4a9d823876a5e70f75ca67f440d"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.5.0/ah_0.5.0_darwin_amd64.tar.gz"
      sha256 "2ff7367621454c86747425bdd01afa2084469835b35e01e7c5cbf047593b1abb"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.5.0/ah_0.5.0_linux_arm64.tar.gz"
        sha256 "7899f3b3c61630f12932cf10c135808692153bd1326c959849f0018e83a4c76c"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.5.0/ah_0.5.0_linux_amd64.tar.gz"
      sha256 "2713e8f353bf5c7b20125a429ecf572a92d66df4a770ac5a96675b008c146b2e"
    end
  end

  def install
    bin.install "ah"
  end

  test do
    system "#{bin}/ah", "--version"
  end
end
