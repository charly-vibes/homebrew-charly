# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.4.0/vampiro_0.4.0_darwin_arm64.tar.gz"
      sha256 "14cb78d9e8ffd292aff51e1926059fb84bd59b1bbbcc96cdbbd7cc8e292058e1"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.4.0/vampiro_0.4.0_darwin_amd64.tar.gz"
      sha256 "5f5372705279e8a2c04eac817e4c8d0cc5b64ef6a536489856255611e044c599"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.4.0/vampiro_0.4.0_linux_arm64.tar.gz"
        sha256 "a8b9902ff299f0c84907c93a775c2a3672383ba00530e3447287ca90113b4411"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.4.0/vampiro_0.4.0_linux_amd64.tar.gz"
      sha256 "ccbb9801ca69443859df5e7545c2cdbc42448151a9aef8e5a0d50fcc156824a3"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
