# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral verification CLI for AI development workflows"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.4/ah_0.12.4_darwin_arm64.tar.gz"
      sha256 "b899fdfd003ad892b2f328f0a4374a0137f44dd5af483cae2fe6d6e5c156e616"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.4/ah_0.12.4_darwin_amd64.tar.gz"
      sha256 "fca2cc9561f6b7e3645a6d8bd5204303d98cf06d613a4bbfe194c59efa8a288b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.4/ah_0.12.4_linux_arm64.tar.gz"
        sha256 "8b92d91348dc5129a2dfcd01914f304b61ac8065f4aa311ea01199166e41e826"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.12.4/ah_0.12.4_linux_amd64.tar.gz"
      sha256 "88fe4fdf0e54e4e88d9c74f8c243830e2d2323fd569d2eed6521ed6b158c8008"
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
