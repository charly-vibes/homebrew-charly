# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.11.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.11/wai_2026.11.11_darwin_arm64.tar.gz"
      sha256 "04eb26872edec1d609ee96c2e355bf38a278f80a0fba1d6ff0d558ba8d69cc89"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.11/wai_2026.11.11_darwin_amd64.tar.gz"
      sha256 "9b652c1a7ffbb6943bebb0fa35efae709ef6be975ee3e63bc87468608ac487ea"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.11.11/wai_2026.11.11_linux_arm64.tar.gz"
        sha256 "36db767d14950d5dfcecdc8206bdeadd2c7d908c86de670b1f37ee20ba879624"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.11.11/wai_2026.11.11_linux_amd64.tar.gz"
      sha256 "25f72a1fea6ee98bb654a33464d45699d333ff2bf38eeb084fc289b0be069be3"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
