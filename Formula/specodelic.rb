# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.8.0/specodelic_0.8.0_darwin_arm64.tar.gz"
      sha256 "cd82686e7789bd201e40c7edcbc536a4b0723e719df3d649ef2bc7a887ebfeab"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.8.0/specodelic_0.8.0_darwin_amd64.tar.gz"
      sha256 "3f0455c96fe4b079cf411484c7fd0912f0acd0d1424b0ad984ca75cebe352840"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.8.0/specodelic_0.8.0_linux_arm64.tar.gz"
        sha256 "c947779d5bca6abae77ad4eadcff5870efbc0415f819cbb70df71d5b61871b2c"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.8.0/specodelic_0.8.0_linux_amd64.tar.gz"
      sha256 "c12d02a73b17ad5e82e17424d0b8e6beb87ca45beb1a72720b3ae379954bdf91"
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
