# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.0/specodelic_0.12.0_darwin_arm64.tar.gz"
      sha256 "0a4f86c93846c24a76a79ec6cd4c246df9a94b51babb0e0377231d8e4b7a0fb0"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.0/specodelic_0.12.0_darwin_amd64.tar.gz"
      sha256 "035523961270042b3d627cc71263feab97c9e078de73cc7c44fb5fa65880b5f8"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.0/specodelic_0.12.0_linux_arm64.tar.gz"
        sha256 "ecd7634f138e4bb060cf108faf50b4de31701086806cb41fe7d875627b4b0afa"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.12.0/specodelic_0.12.0_linux_amd64.tar.gz"
      sha256 "5d38312b2583cd85e7b70608a155b4384760bdf06dc081051a231d804f17dd03"
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
