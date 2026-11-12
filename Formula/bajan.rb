# typed: false
# frozen_string_literal: true

class Bajan < Formula
  desc "Spec-driven knowledge-graph pipeline CLI"
  homepage "https://github.com/charly-vibes/bajan"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.3.1/bajan_0.3.1_darwin_arm64.tar.gz"
      sha256 "21947131bed711673b1bdf56726e4cd980d45225ee66a344866db21fe84344b1"
    end
    on_intel do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.3.1/bajan_0.3.1_darwin_amd64.tar.gz"
      sha256 "9585be6965c44cd8155c00cb27c3151dd07b55d3e8151afce4cd7cd1f6f045de"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/bajan/releases/download/v0.3.1/bajan_0.3.1_linux_arm64.tar.gz"
        sha256 "b533a4b0ee5215c3f4fe59e728d4ff47595733cae2936b76b628c0af6c3559eb"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.3.1/bajan_0.3.1_linux_amd64.tar.gz"
      sha256 "de7ead8937701fa7b8b51449becf2e163ec7f5e97f5b863d2f88822c96909297"
    end
  end

  def install
    bin.install "bajan"
  end

  test do
    system "#{bin}/bajan", "--version"
  end
end
