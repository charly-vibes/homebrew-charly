# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_darwin_arm64.tar.gz"
      sha256 "2f943325e92bbc9d1a043622cb84ff4044cc19ac5fb6392a5716cd6623d61e27"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_darwin_amd64.tar.gz"
      sha256 "83770d1f46b209862d03e7a4236aa7fe13b5c67fd12a70fd6ed879433ef7a5c6"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_arm64.tar.gz"
        sha256 "2d93bcf51a1ba70aebdc7086baf75ae584f23fabb478f993bcba12e5f10d3f80"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_amd64.tar.gz"
      sha256 "1f36975ef3029d4d75184977a7adc1794f12937d0c7250d0f1befb8232a67a40"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
