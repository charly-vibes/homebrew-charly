# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.3/wai_2026.10.3_darwin_arm64.tar.gz"
      sha256 "7ce33637219f0a28918efd74df53ea32d5bbd7aeeb83e4eaf2fcfe3db8a15336"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.3/wai_2026.10.3_darwin_amd64.tar.gz"
      sha256 "ca354a4d95ed8504cfc81d47305135761a1618c92f2e8700134f5ead87f9272b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.10.3/wai_2026.10.3_linux_arm64.tar.gz"
        sha256 "9374ff78ca3955e1e74293c157bb53016b9d41abb2f89d7130433bcd89955400"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.10.3/wai_2026.10.3_linux_amd64.tar.gz"
      sha256 "be0d9ff038eb51d63076cae272e01f5103df83fed603b52c85c5e26b14078b96"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
