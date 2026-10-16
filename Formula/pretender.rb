# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Structural code-quality checker for multiple languages"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.10.0/pretender_0.10.0_darwin_arm64.tar.gz"
      sha256 "2604cdc2423a4e9251a20206387774c2dc54499f0d009da121617e1c0a307dbc"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.10.0/pretender_0.10.0_darwin_amd64.tar.gz"
      sha256 "ede01ffe7d38da5bf31ab1e0af3b838a56cda0bee444817af7c7b9a1be287d2c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.10.0/pretender_0.10.0_linux_arm64.tar.gz"
        sha256 "9698678c6dc53ad2751dd2ec06106b09fc39338593d745f173074bf43b346457"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.10.0/pretender_0.10.0_linux_amd64.tar.gz"
      sha256 "df1fcce94aba1178bf05df0df450ac36c8a74a87b82e8afb0e65141f564b0401"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "\#{bin}/pretender", "--version"
  end
end
