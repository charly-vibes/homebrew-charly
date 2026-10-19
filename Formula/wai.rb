# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.19/wai_2026.10.19_darwin_arm64.tar.gz"
      sha256 "998bfdb2091933315a58665da8845c2c94f053d521fedbeb49b10eaba51b3ebf"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.19/wai_2026.10.19_darwin_amd64.tar.gz"
      sha256 "02d4687ce1ed9379cc5a23c5ca88e43aa117401a3ac8bf49c9e4696ac4fc8179"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.19/wai_2026.10.19_linux_arm64.tar.gz"
        sha256 "89970f429ac96d3d512fef7478fa5b15a9e5919befc21b4928e410bdb5f2a8f7"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.19/wai_2026.10.19_linux_amd64.tar.gz"
      sha256 "6099ddcd1942ed74b05058b97a8f5f916d290059638187ad5917e8439cfc9f6a"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
