# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.9/testaruda_0.5.9_darwin_arm64.tar.gz"
      sha256 "44f93289e3adc9e16c7fe42acde5f75603da9a932757eeb1a7d5517120cd8b54"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.9/testaruda_0.5.9_darwin_amd64.tar.gz"
      sha256 "85ba33053b50439435900a3afc5ae79d1414f1a9b1f7b2e002587c32d927157f"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.9/testaruda_0.5.9_linux_arm64.tar.gz"
        sha256 "7db3b72966c4ca3321b6035197dde4221bc7e7222a502bf5669a44dc1645919f"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.9/testaruda_0.5.9_linux_amd64.tar.gz"
      sha256 "7f7e3e2c3d6b0864c03da026b6a47ec8a7dff4d4a2608014aca9398645420dac"
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
