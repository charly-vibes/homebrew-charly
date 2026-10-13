# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.10.0/specodelic_0.10.0_darwin_arm64.tar.gz"
      sha256 "bdb4b8df9aaf694c34485fac5d34b5d039353e185f1a03468d74e1a0405cc9b9"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.10.0/specodelic_0.10.0_darwin_amd64.tar.gz"
      sha256 "1331834a86f6efc4ca84a80db8b89e3a08b8a4a4d978bcb9f2046c585a7e1263"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.10.0/specodelic_0.10.0_linux_arm64.tar.gz"
        sha256 "2e5d522b1dfa8bb1adcf50a1812f0ec7ac888ba9b5cfce95c7948276a7c3eb81"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.10.0/specodelic_0.10.0_linux_amd64.tar.gz"
      sha256 "969e4de79a937da77e58d23cff3835888a469192e881bcefe2d12ef53d0b8e9a"
    end
  end

  def install
    bin.install "specodelic"
    bin.install "spk"
  end

  test do
    system "#{bin}/specodelic", "--version"
    system "#{bin}/spk", "--version"
  end
end
