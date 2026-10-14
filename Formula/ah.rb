# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.0/ah_0.12.0_darwin_arm64.tar.gz"
      sha256 "b9316255b75e63b061720d714605db35c040f6e9f1cef92abd88c4844c171241"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.0/ah_0.12.0_darwin_amd64.tar.gz"
      sha256 "dbeb2cf6bfcdcc01968c7b86aaad3926c054d5fdd1d1e2648adeeffe330edf2c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.0/ah_0.12.0_linux_arm64.tar.gz"
        sha256 "94607e079e61e5a497f0d915bec246144c83b92aa425180fe20ea21bc11b3531"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.0/ah_0.12.0_linux_amd64.tar.gz"
      sha256 "b9107b1a9b46a4121c8c102e3c05065567bfff0ffaf962855611e7d652600665"
    end
  end

  def install
    bin.install "ah"
    bin.install "espectacular"
  end

  test do
    system "\#{bin}/ah", "--version"
  end
end
