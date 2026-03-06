# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.2/wai_2026.3.2_darwin_arm64.tar.gz"
      sha256 "369e261eeb1298da237e27fb505b3494125d756e51433f66da56061384744754"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.2/wai_2026.3.2_darwin_amd64.tar.gz"
      sha256 "f071fd0e2548266107b96b0262c99c38217be3fd7d3767fcca118c249b8dd1fa"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.3.2/wai_2026.3.2_linux_arm64.tar.gz"
        sha256 "b04d10ba6d0cf6e82bd18176889d64e137eaf3ea3767e7fc12db525e2ffcaf79"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.3.2/wai_2026.3.2_linux_amd64.tar.gz"
      sha256 "c11abdb909f3988781e70a03d24770c3d3a8b78d99fe68c2e40e4eec96a08b32"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
