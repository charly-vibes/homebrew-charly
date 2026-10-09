# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.2/testaruda_0.5.2_darwin_arm64.tar.gz"
      sha256 "e9cb7d8220718545d8654d7899be7b39d4dad076d4a836ba7bb44dd647c9c6db"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.2/testaruda_0.5.2_darwin_amd64.tar.gz"
      sha256 "1b95ab1ad058f5c6c1cb070be5dec6d155fdaf50ab7ad6d52cc5b31e86def208"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.2/testaruda_0.5.2_linux_arm64.tar.gz"
        sha256 "99fa3374691a45fde3c03165d83b8b5dadd6782083593220a0b10a7ac0139c72"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.2/testaruda_0.5.2_linux_amd64.tar.gz"
      sha256 "3d6a383c23b3a26c11956f60180c2fad1048982d3d79b1a967786993e0304404"
    end
  end

  def install
    bin.install "testaruda"
    bin.install "testaruda-adapter-rust"
    bin.install "testaruda-adapter-python"
  end

  test do
    system "\#{bin}/testaruda", "--version"
  end
end
