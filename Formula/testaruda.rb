# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.7/testaruda_0.5.7_darwin_arm64.tar.gz"
      sha256 "b647062e1eec98b6c28e1135e510f88920c3708d6cba54b61239f1253a0d5838"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.7/testaruda_0.5.7_darwin_amd64.tar.gz"
      sha256 "e56c925bbb2c7aa0f7d7fecf8afc7ca426dfb0c3fd7a0bee6b442a340dce8915"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.7/testaruda_0.5.7_linux_arm64.tar.gz"
        sha256 "2b0d7666535b7f63f9090d805856249bcfe38c02aa903de5a0ec407278ee92f3"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.7/testaruda_0.5.7_linux_amd64.tar.gz"
      sha256 "264adec361c9f6d785c3e6791e51c3f397d2f3dd743ee0d85ccff6769805b3b3"
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
