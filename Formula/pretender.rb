# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.0/pretender_0.7.0_darwin_arm64.tar.gz"
      sha256 "34ebe710ff968d542ec0736f6c9c09706eff59c5bba4bdba40cca474adb14f35"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.0/pretender_0.7.0_darwin_amd64.tar.gz"
      sha256 "ed6fffe188011bc1023a319e9d8c374ce6d182c3ce162e4d501a212966d6445b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.7.0/pretender_0.7.0_linux_arm64.tar.gz"
        sha256 "39a617e1083413ab68d6fb5f1a29aefdeadaabb657dfb6b00dad30d953f924ca"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.7.0/pretender_0.7.0_linux_amd64.tar.gz"
      sha256 "4199b54259b5a25173bb384c113d0dc5377fb6d5c89adad981d085d403f51d49"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
