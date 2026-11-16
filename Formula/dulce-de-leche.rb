# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.10.0/ddl_0.10.0_darwin_arm64.tar.gz"
      sha256 "029ea89b2829a8a2fe284d1392461cbdac484470e3f55c6384e9ad604e5f74a2"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.10.0/ddl_0.10.0_darwin_amd64.tar.gz"
      sha256 "c809d9c7f0994374219d3838efa06cc52a5954513aa2bc27feeb8ee20367a5ba"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.10.0/ddl_0.10.0_linux_arm64.tar.gz"
        sha256 "7dd58bbf675afe5abe3cedf0440b6c922fc8bd3c07057551942e068b38d007b4"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.10.0/ddl_0.10.0_linux_amd64.tar.gz"
      sha256 "a63d62eb1543fa35c6f683a21fc4cfed7450d9c207831b4f1c1e5b99806f3680"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "\#{bin}/ddl", "--version"
  end
end
