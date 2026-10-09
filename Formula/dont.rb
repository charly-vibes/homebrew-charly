# typed: false
# frozen_string_literal: true

class Dont < Formula
  desc "Epistemic discipline CLI for autonomous LLM agent workflows"
  homepage "https://github.com/charly-vibes/dont"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dont/releases/download/v0.4.0/dont_0.4.0_darwin_arm64.tar.gz"
      sha256 "f38a5cfe092860be10cd0bc017f054ae3b004baac6dccc86b2421ae27847cffc"
    end
    on_intel do
      url "https://github.com/charly-vibes/dont/releases/download/v0.4.0/dont_0.4.0_darwin_amd64.tar.gz"
      sha256 "78e7668f55591225ad1019a853b3bc0ca785d9816f0d1ddf25a3eff6e5549cf5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dont/releases/download/v0.4.0/dont_0.4.0_linux_arm64.tar.gz"
        sha256 "14c1162fbf8c25d14c0d8ae10a4e30d5fa5b8f6bf6757d7ef8e5a118fcb55e1e"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dont/releases/download/v0.4.0/dont_0.4.0_linux_amd64.tar.gz"
      sha256 "06410b17a1d68576e2648572080edc41cb6fb8acb5196675e915fd3d00cc3fb0"
    end
  end

  def install
    bin.install "dont"
  end

  test do
    system "\#{bin}/dont", "--version"
  end
end
