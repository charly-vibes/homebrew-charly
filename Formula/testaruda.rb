# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.5/testaruda_0.5.5_darwin_arm64.tar.gz"
      sha256 "a3d9eadcbe8afd81c26aa2ad4231014c328178eba1e3a9be5b410ad9a398e142"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.5/testaruda_0.5.5_darwin_amd64.tar.gz"
      sha256 "565ffcab67e13aae19b8aeb295c36f108d4ca04e23503be6a26e2fdf7f633c61"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.5/testaruda_0.5.5_linux_arm64.tar.gz"
        sha256 "860dde486f197e4f44206bd5fbc7b32c511b2157d5640e2c296dd3df713910fa"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.5/testaruda_0.5.5_linux_amd64.tar.gz"
      sha256 "a5c220732f07bc91bcc2cde65fb404d337eff702749f6ffe7c0d2633c285f8c6"
    end
  end

  def install
    bin.install "testaruda"
    bin.install "testaruda-adapter-rust"
    bin.install "testaruda-adapter-python"
    bin.install "testaruda-adapter-typescript"
    bin.install "testaruda-adapter-clojure"
  end

  test do
    system "\#{bin}/testaruda", "--version"
  end
end
