# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.0/wai_2026.5.0_darwin_arm64.tar.gz"
      sha256 "bc9d7f6704f51351a798dc0450105718c6bdb065524c71a1b2c824388d2c393a"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.0/wai_2026.5.0_darwin_amd64.tar.gz"
      sha256 "844b337b5467202424641a65e11a23e45df922d156c0487362126ae5397bbdc6"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.5.0/wai_2026.5.0_linux_arm64.tar.gz"
        sha256 "fb23140e3014f4542de3f0b558db847e8a58e628bfe6527b4ca81aa2eca541bf"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.0/wai_2026.5.0_linux_amd64.tar.gz"
      sha256 "36a6234bae86dff13248dc9132b04fbe4e1df6c65b5585ab610d7a9b7c3b20e3"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
