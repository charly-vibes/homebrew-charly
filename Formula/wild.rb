# typed: false
# frozen_string_literal: true

class Wild < Formula
  desc "Scoped dependency-contract checker for Rust/Cargo updates"
  homepage "https://github.com/charly-vibes/wild"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wild/releases/download/v0.2.1/wild_0.2.1_darwin_arm64.tar.gz"
      sha256 "089e9925c321c34bf3e29f86d54b229c9b85cc962423c19472dc5026e7acff2b"
    end
    on_intel do
      url "https://github.com/charly-vibes/wild/releases/download/v0.2.1/wild_0.2.1_darwin_amd64.tar.gz"
      sha256 "671c5b35f77b2b4bf3b28e386d1ab20f693bcd0846cb1c64f2cd754d19319d69"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wild/releases/download/v0.2.1/wild_0.2.1_linux_arm64.tar.gz"
        sha256 "099815c2ed1a4f1c394e916f36beb0bb43ebdc6fd61cfed789216839fb4849c0"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wild/releases/download/v0.2.1/wild_0.2.1_linux_amd64.tar.gz"
      sha256 "2c6a221285cc9609970aa50f9256d4a4dbb8c42f65a476107d8eca96d7d91aa7"
    end
  end

  def install
    bin.install "wild"
  end

  test do
    system "\#{bin}/wild", "--version"
  end
end
