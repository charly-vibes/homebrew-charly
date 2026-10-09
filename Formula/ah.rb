# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.11.0/ah_0.11.0_darwin_arm64.tar.gz"
      sha256 "64c3ae7362abf959c311542c1939abb894ed8a958e1540a6f7da8f15606538b6"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.11.0/ah_0.11.0_darwin_amd64.tar.gz"
      sha256 "3c4c2c2a283817fb2dc1ac270d210c3c48ebc13549a3b09d9d893b1c0fd11637"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.11.0/ah_0.11.0_linux_arm64.tar.gz"
        sha256 "827d358e535f4a8d71187605a1868870051d6e801363f1a73aad447c0c5aa1ae"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.11.0/ah_0.11.0_linux_amd64.tar.gz"
      sha256 "33b331bbfe8086bcbd9b46813adc5682d5992d85518d6befaa7987c24b159068"
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
