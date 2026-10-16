# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.11.0/specodelic_0.11.0_darwin_arm64.tar.gz"
      sha256 "e4abde60f6feb3e99ae09987c443c91112047fa168f5c7dbef0c11f2ee536494"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.11.0/specodelic_0.11.0_darwin_amd64.tar.gz"
      sha256 "91c4a19f89f28c2df0e5781099d67896b61f7079a48899fc8c7d86871f5fa956"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.11.0/specodelic_0.11.0_linux_arm64.tar.gz"
        sha256 "c35f4306d33a2ec49bc459b75807b57e1083cee2465a090cc3a0f752e687fe4b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.11.0/specodelic_0.11.0_linux_amd64.tar.gz"
      sha256 "cff9c3887845e1515ce028073b4c19e71dd2ea7a33c3d3bccb24174f0137d5f6"
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
