# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.0/pretender_0.11.0_darwin_arm64.tar.gz"
      sha256 "de3736daf1183a42c184e0466cf5ca05a63d091ef62c107fe178e7f481acf7bb"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.0/pretender_0.11.0_darwin_amd64.tar.gz"
      sha256 "bfa05389c212d256849a854db585f7cb6f4c39ba73485ed45e93517c56771867"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.11.0/pretender_0.11.0_linux_arm64.tar.gz"
        sha256 "718e0196f6f5dda103e2a916148c1e3c9158a28fcee00083b69efc27783318fd"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.0/pretender_0.11.0_linux_amd64.tar.gz"
      sha256 "48785d1d5a66876e68cb3ed2d325053645471dbb41156e00c36a02e17df8177d"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
