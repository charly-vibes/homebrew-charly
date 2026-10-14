# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.4/testaruda_0.5.4_darwin_arm64.tar.gz"
      sha256 "139230f06d31e0c04da3a6f7ced9e59aa36fbbc0ed37075de4429aa072f01e3e"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.4/testaruda_0.5.4_darwin_amd64.tar.gz"
      sha256 "fa0152120777a275bb9206d277c9e26dc1a015db4dbff3fdb8d153b01ee521cf"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.4/testaruda_0.5.4_linux_arm64.tar.gz"
        sha256 "820571c9b891fddf79d1a533963239b58eeb8bb6f530d97634a2ef9863de83fb"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.4/testaruda_0.5.4_linux_amd64.tar.gz"
      sha256 "508acc05701db9ae6379282676f0fb8fd6ba793329af7edde56f63c3ef1e07c1"
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
