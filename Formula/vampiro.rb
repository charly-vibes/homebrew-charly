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
      sha256 "6571ff2bbe29c3a18431d0cea5d8800a109e5238da77810bb0ca8d6bbca0c896"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_darwin_amd64.tar.gz"
      sha256 "e277537945178048209fa227acfce753cf44ffa36b75733ceffae740e31e85c5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_arm64.tar.gz"
        sha256 "bfb4ab3b23a92fecf0f41733c47e5325e577a4341f21dd8fa23e1ccc19b21028"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_amd64.tar.gz"
      sha256 "494b80b4f1865ba957a508be031c1713fccf27024e981507e2e4dae895df1f06"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
