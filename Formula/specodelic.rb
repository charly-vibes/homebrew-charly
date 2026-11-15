# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.13.0/specodelic_0.13.0_darwin_arm64.tar.gz"
      sha256 "c913fd9d86fe0a1792d576e8a585c13a97389b5c4c7e1fd9a0ed49d333c99814"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.13.0/specodelic_0.13.0_darwin_amd64.tar.gz"
      sha256 "e7a49735ab9022e2d741d83e4e9296d18757ee783c7490e4be3bb7841fcc88b6"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.13.0/specodelic_0.13.0_linux_arm64.tar.gz"
        sha256 "7db99c18cb9a8976e87ff784db4871ae0119828f99ee128733523de5551ffed9"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.13.0/specodelic_0.13.0_linux_amd64.tar.gz"
      sha256 "66ed931b52537b294ea1dfd553c2c7ede608a12c01c494f0a611eb1b7911d203"
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
