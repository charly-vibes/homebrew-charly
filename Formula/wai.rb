# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.10/wai_2026.10.10_darwin_arm64.tar.gz"
      sha256 "9e27aff3b9a1772553b97f370d1fafce60a074d3e99110b41537353e5cc4b8a7"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.10/wai_2026.10.10_darwin_amd64.tar.gz"
      sha256 "de239e75a655ba9b8a34de012e008f582a878fdcae0c8af1da8ef9a2c2278110"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.10/wai_2026.10.10_linux_arm64.tar.gz"
        sha256 "2481872529e29d045599f82a9cbfa3c56632468fd839c5ae67427778d24709e5"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.10/wai_2026.10.10_linux_amd64.tar.gz"
      sha256 "6aa6902ce7b5c8aee9212e908ce1fb62ae7a339ffbdfa77cf7e5eb63ef51c158"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
