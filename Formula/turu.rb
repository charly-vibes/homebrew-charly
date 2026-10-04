# typed: false
# frozen_string_literal: true

class Turu < Formula
  desc "Deterministic knowledge workspace management for AI agents"
  homepage "https://github.com/charly-vibes/whisper"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.10.0/turu_{version}_darwin_arm64.tar.gz"
      sha256 "9913d5bd5f255a3ba43b4f8b7b13af897e5e8b8577baafaff692dea8edd7a6e2"
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.10.0/turu_{version}_darwin_amd64.tar.gz"
      sha256 "0a99c1a6a6b8b22b16b583fb23ea571c2fb11a40672090be8b5391dacea1c29d"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/whisper/releases/download/v0.10.0/turu_{version}_linux_arm64.tar.gz"
        sha256 "591daf6b3712c809e04124afa0ac55d8ec70953fea0736d78a13c493f790f9cd"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/whisper/releases/download/v0.10.0/turu_{version}_linux_amd64.tar.gz"
      sha256 "52deac096601e45dc87a2eb88f1764a37ec0b48be6ffedb24a544cb9bd1c77bf"
    end
  end

  def install
    bin.install "turu"
    bin.install "turututu"
    bin.install "whisper"
  end

  test do
    system "#{bin}/turu", "--version"
  end
end
