# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.12.0/pretender_0.12.0_darwin_arm64.tar.gz"
      sha256 "70e799901347626dfef2fd2f12509cd6b7aa839f203878b2d475f31a6881d687"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.12.0/pretender_0.12.0_darwin_amd64.tar.gz"
      sha256 "99b498506b7ba5b2e33bfd2dd651ca2a98f165c9b39d81c1ab71834c714075fd"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.12.0/pretender_0.12.0_linux_arm64.tar.gz"
        sha256 "67351f076d7b85fabaf221556bd778006131292582281b8daa5724160fd954f5"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.12.0/pretender_0.12.0_linux_amd64.tar.gz"
      sha256 "2767a61a79128a3d3f843f649aa2ed857dd3b4083cd52a2a5be51f4e04f83eaf"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
