# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.1/wai_2026.4.1_darwin_arm64.tar.gz"
      sha256 "3ac23540ff595c745c9bc8fc03721d4c9cd2afafef60a712800d4c254b4f017c"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.1/wai_2026.4.1_darwin_amd64.tar.gz"
      sha256 "d313734fb53244ebbd763255d8689c606c0d55487800de33a0126b2963af4d03"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.4.1/wai_2026.4.1_linux_arm64.tar.gz"
        sha256 "a61775462b8b7d8ed37fad0df29c7f98ab346adc417ed4d37e6555e25587f6cd"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.4.1/wai_2026.4.1_linux_amd64.tar.gz"
      sha256 "1e5f42faded26a0c1291a6ba52308b5d0bd46d17f83912b8bb78fd1e6e09fcac"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
