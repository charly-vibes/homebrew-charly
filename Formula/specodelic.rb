# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.1/specodelic_0.12.1_darwin_arm64.tar.gz"
      sha256 "b5909e4f16205f21b01722ca436df42b7765284b55d567ea3fe1c0e32111e5de"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.1/specodelic_0.12.1_darwin_amd64.tar.gz"
      sha256 "2d26a3bf54ef56f8f5c20194a25feb9e5495c332dd3be51ae1cc5130c174bbe0"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.1/specodelic_0.12.1_linux_arm64.tar.gz"
        sha256 "bb652fb02d85111d98689ee25dd9e5ee629773188982f6a3db9460cea5690db8"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.1/specodelic_0.12.1_linux_amd64.tar.gz"
      sha256 "053d8ca00b44f1b7993722fa780cf876f4693407f382265004925d42a415d0e1"
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
