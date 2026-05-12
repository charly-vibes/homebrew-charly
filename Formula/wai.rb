# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.1/wai_2026.5.1_darwin_arm64.tar.gz"
      sha256 "3468c124213ded1963616316af3e9ef8686df2e14230f09e22c5cbe1ae8bc9fd"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.1/wai_2026.5.1_darwin_amd64.tar.gz"
      sha256 "984d4c88c7240d65c69d083453a7af49b06ef4810128ac94b13a6598f6e3276c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.5.1/wai_2026.5.1_linux_arm64.tar.gz"
        sha256 "09e648b54e32fee09f3be65b3d413da2a69abed171236bd3b7c9286ceed973f3"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.1/wai_2026.5.1_linux_amd64.tar.gz"
      sha256 "78d349c6bccb16c474544c70a8f97ad64b8f6ec27c6d2224084f73b031dcb6ec"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
