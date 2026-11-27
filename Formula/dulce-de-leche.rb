# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.11.0/ddl_0.11.0_darwin_arm64.tar.gz"
      sha256 "2a11bbcaf6ba67e2ccb16666b7e9d222771122b9b817efc8d2073a11136fb936"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.11.0/ddl_0.11.0_darwin_amd64.tar.gz"
      sha256 "9d2dae771be2ffcbf056f65784392b3dcd73a294454af7ad8b591be56b99aa46"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.11.0/ddl_0.11.0_linux_arm64.tar.gz"
        sha256 "7ea8af5544abca46055fef850d7ed03b10663caba9498524dff086270086df30"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.11.0/ddl_0.11.0_linux_amd64.tar.gz"
      sha256 "7c3e12975d41dd0ba6f5236a3fb93197e94748c718714aeb7c05c1dca15ed513"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "\#{bin}/ddl", "--version"
  end
end
