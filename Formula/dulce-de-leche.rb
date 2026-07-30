# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.1.0/ddl_0.1.0_darwin_arm64.tar.gz"
      sha256 "284b59f682eca1780bf0c99253c1cc33f8d9d3000f7bda49d1a226cfe8d01652"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.1.0/ddl_0.1.0_darwin_amd64.tar.gz"
      sha256 "ec8856e4acad1dd26bbfbac3dd173b83ea4fd3bae798fe07ceb9656dac25be57"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.1.0/ddl_0.1.0_linux_arm64.tar.gz"
        sha256 "93c1c7bd908d18f92c9670b4731da45a04de4e84307982107ce11e59400dbc0d"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.1.0/ddl_0.1.0_linux_amd64.tar.gz"
      sha256 "3d7a1980393b7875527f1b218274bbf440eb06e21f1615ec589f2da289e987d4"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "\#{bin}/ddl", "--version"
  end
end
