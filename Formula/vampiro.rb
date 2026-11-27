# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.2/vampiro_0.6.2_darwin_arm64.tar.gz"
      sha256 "7bb0389f763a77cc380f5d0f78b34cdb44e2988beed3750c14cb9d7f705913fc"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.2/vampiro_0.6.2_darwin_amd64.tar.gz"
      sha256 "7a640530d3a3c0b1affc8c95ed22240290d9774918e3d9aa445c1c2fab128f3f"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.2/vampiro_0.6.2_linux_arm64.tar.gz"
        sha256 "c8ea6a680cd81dee708a2f43f492404b4e28632c1b5a7c7af34e125c06383b67"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.2/vampiro_0.6.2_linux_amd64.tar.gz"
      sha256 "bab9868172636b641710fee1666e67cf05691fa43907a63781709d49847b3424"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
