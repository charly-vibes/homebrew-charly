# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.2.1/wai_2026.2.1_darwin_arm64.tar.gz"
      sha256 "d16b33ea4679f0461df2b883d927684b15cde38cc21533a63e4defe954b00095"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.2.1/wai_2026.2.1_darwin_amd64.tar.gz"
      sha256 "7cfdc6c3984faa40b04c5416b0f78579c48e01b7b99e2fc3cc2f9cbd22b0c7e4"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.2.1/wai_2026.2.1_linux_arm64.tar.gz"
        sha256 "7fb2a1104b2bbfa065d01b56c9f99478ac5c9f87028683a5637ff0a97ef4c31b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.2.1/wai_2026.2.1_linux_amd64.tar.gz"
      sha256 "28c46f300bf656efd9fa0c7c56df25d4247a55878ee775774559f9cf87a10a86"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
