# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.7.0/specodelic_0.7.0_darwin_arm64.tar.gz"
      sha256 "ca1fed20a37ac821ac9cfb224c96fc79ff138522de5258dbea4a5b3399d002e8"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.7.0/specodelic_0.7.0_darwin_amd64.tar.gz"
      sha256 "53a4b717bd1341ebc3a93e86451f7bbbf2f43a4f131670d140913f8843347d8b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.7.0/specodelic_0.7.0_linux_arm64.tar.gz"
        sha256 "ae30bd6209b2bf772504211470d3aaf43afc97fed9e55b30d45b4850b95316d0"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.7.0/specodelic_0.7.0_linux_amd64.tar.gz"
      sha256 "561067d1a2e7bf0069abcee68b607797db624a242f43d408834fe15db4522a01"
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
