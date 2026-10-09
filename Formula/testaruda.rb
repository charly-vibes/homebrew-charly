# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.3/testaruda_0.5.3_darwin_arm64.tar.gz"
      sha256 "661d8a67e3cff4f9f7ec8e1d7cf62b08e101502c8c2736e1124347b38da0598e"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.3/testaruda_0.5.3_darwin_amd64.tar.gz"
      sha256 "d9fd07b5c25bfba89c32cc27d9ea655e28200b6d56caa9386b1bab5b2b80fbb1"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.3/testaruda_0.5.3_linux_arm64.tar.gz"
        sha256 "ec3f0afda488d52b4df0249d1f0b31bafd4684d99acb406ad9820822b81607eb"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.3/testaruda_0.5.3_linux_amd64.tar.gz"
      sha256 "14a1ef6127f3025c3b818d3faaa92a2f386b0f44e4ebd694f8520b7c817fafaa"
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
