# typed: false
# frozen_string_literal: true

class Wai < Formula
  desc "Workflow manager for AI-driven development"
  homepage "https://github.com/charly-vibes/wai"
  version "2026.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.3/wai_2026.5.3_darwin_arm64.tar.gz"
      sha256 "c847b9ef7b3fca6fcb9a678f108aa4223cb3485fdff426a7b6e8510420ad1c5b"
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.3/wai_2026.5.3_darwin_amd64.tar.gz"
      sha256 "daa52af088a3665a4b199029ee3fe3ac9cc89dfccac67e8bdd4f1cabbd762791"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/wai/releases/download/v2026.5.3/wai_2026.5.3_linux_arm64.tar.gz"
        sha256 "7a7e5b4afb397a8ba77e67afc3c2c25876ee2b5f96a67bab71cfb34418a8560c"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/wai/releases/download/v2026.5.3/wai_2026.5.3_linux_amd64.tar.gz"
      sha256 "1a175070a7fb8b4ed6902133c7b88d36fb329c70d399f9f0af0e84350d0fc31d"
    end
  end

  def install
    bin.install "wai"
  end

  test do
    system "\#{bin}/wai", "--version"
  end
end
