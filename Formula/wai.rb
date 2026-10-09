# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.9/wai_2026.10.9_darwin_arm64.tar.gz"
      sha256 "c9c1625d1b7f5dad68d00af8ecc2145e676253bec5f34a52ed6dd07b18b14e0d"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.9/wai_2026.10.9_darwin_amd64.tar.gz"
      sha256 "64620ef17f9e0b875589bdff6da551e0759793f5138645b2f54251af88c43aae"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.9/wai_2026.10.9_linux_arm64.tar.gz"
        sha256 "4a8735b25f5dec1a3508d788940f275f59c35327781784a67726d81bffd7e61d"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.9/wai_2026.10.9_linux_amd64.tar.gz"
      sha256 "78a9fa5574793c6fef8bb317c22d637c0c15b65872bc85230aa2ffb94719418a"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
