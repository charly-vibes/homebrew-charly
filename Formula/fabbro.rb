# typed: false
# frozen_string_literal: true

class Fabbro < Formula
  desc "Local-first code review annotation tool with a terminal UI"
  homepage "https://github.com/charly-vibes/fabbro"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/fabbro/releases/download/v0.0.0/fabbro_0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/charly-vibes/fabbro/releases/download/v0.0.0/fabbro_0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/fabbro/releases/download/v0.0.0/fabbro_0.0.0_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/fabbro/releases/download/v0.0.0/fabbro_0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "fabbro"
  end

  test do
    system "#{bin}/fabbro", "--version"
  end
end
