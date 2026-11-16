# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.1/pretender_0.11.1_darwin_arm64.tar.gz"
      sha256 "d7258c89e10aacf01d375aa909927dc3fbb8c0ad9f835c32ff0283de971d369e"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.1/pretender_0.11.1_darwin_amd64.tar.gz"
      sha256 "48d42dd6de086e65f7aea436ed52618ec6ad9dc4205289f8b4e53631968a5ca1"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.11.1/pretender_0.11.1_linux_arm64.tar.gz"
        sha256 "fad98105c99ee7c84031dc22ee49561e77fc1470b950bcbdfe6be4870c7cb199"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.11.1/pretender_0.11.1_linux_amd64.tar.gz"
      sha256 "2a1f7c78e5cddf2ec976d31407c93019e816794eb30aa668f0740940556beb32"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
