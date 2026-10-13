# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.9.0/specodelic_0.9.0_darwin_arm64.tar.gz"
      sha256 "ceca441577091b86db8c3e6968f812f6bcd3c8cab1fc24878f4e4bc94c682b90"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.9.0/specodelic_0.9.0_darwin_amd64.tar.gz"
      sha256 "c9d91eaa46dd0335d9d4ea89482bb7c77c13293f2e4ea978122c60a60f9d14f4"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.9.0/specodelic_0.9.0_linux_arm64.tar.gz"
        sha256 "7bc2d25b5dba947d8d500968a261d8634caeb69508dcbf2ab077e28b9e25f85a"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.9.0/specodelic_0.9.0_linux_amd64.tar.gz"
      sha256 "5e4f73100b18483be17fad190d85f7b61d0b039ece57fc95083b6dcff144f93a"
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
