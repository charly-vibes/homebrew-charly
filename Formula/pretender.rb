# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.9.0/pretender_0.9.0_darwin_arm64.tar.gz"
      sha256 "e55ac34ca3aa3dd2ae243027c259a1f044e1a040b992ede51ef1aba95d3f2a12"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.9.0/pretender_0.9.0_darwin_amd64.tar.gz"
      sha256 "523f2dc5de988dc8ef12fa1fa1c5c54cdfd346a8df309130cbf4e7648cc325cb"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.9.0/pretender_0.9.0_linux_arm64.tar.gz"
        sha256 "496fb69ccae52de3b9d26eefa30070250a6c5de49656b631b96696091a3c4b25"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.9.0/pretender_0.9.0_linux_amd64.tar.gz"
      sha256 "19961a869a4b997e38ea7474126f1c79dfccb48223d364f391744046fb9ea135"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
