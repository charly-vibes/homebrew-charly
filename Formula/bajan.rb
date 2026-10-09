# typed: false
# frozen_string_literal: true

class Bajan < Formula
  desc "Spec-driven knowledge-graph pipeline CLI"
  homepage "https://github.com/charly-vibes/bajan"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.1.0/bajan_0.1.0_darwin_arm64.tar.gz"
      sha256 "c063d019f1aec3b22919a923a0cadb89bd3fde3a79771e5a132a592303ad527d"
    end
    on_intel do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.1.0/bajan_0.1.0_darwin_amd64.tar.gz"
      sha256 "2261cd1dbbfc938ead4a030d734672fba03a13cf7ee877c4b891924652515c90"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/bajan/releases/download/v0.1.0/bajan_0.1.0_linux_arm64.tar.gz"
        sha256 "ec2e43232f0a0054c1952c1f7b2d777a152601b87bedbd4a49ecf1a7a7c16d23"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/bajan/releases/download/v0.1.0/bajan_0.1.0_linux_amd64.tar.gz"
      sha256 "9bb7152a7a767d1385c039aa107d701fbb32f9037588baa2543763fb8646f9d9"
    end
  end

  def install
    bin.install "bajan"
  end

  test do
    system "#{bin}/bajan", "--version"
  end
end
