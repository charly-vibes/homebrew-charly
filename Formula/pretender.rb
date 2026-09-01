# typed: false
# frozen_string_literal: true

class Pretender < Formula
  desc "Multi-language structural code quality"
  homepage "https://github.com/charly-vibes/pretender"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.5.0/pretender_0.5.0_darwin_arm64.tar.gz"
      sha256 "79e155631622ea531b4412e1c880e5f72b38a14cf3844ec37e273dd87462c3b3"
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.5.0/pretender_0.5.0_darwin_amd64.tar.gz"
      sha256 "0dc08075967288aa54903a81da3cbd416207adbeca09973b0bd994cc5db28461"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/pretender/releases/download/v0.5.0/pretender_0.5.0_linux_arm64.tar.gz"
        sha256 "de2396764ab9005b656fb74a8b5b9ebfab71955f883bce87feeaa3a2fb33d30f"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/pretender/releases/download/v0.5.0/pretender_0.5.0_linux_amd64.tar.gz"
      sha256 "7609c617e5a62b92edb4d15d200c388693aeb84647d59de18fb9c067013b6869"
    end
  end

  def install
    bin.install "pretender"
  end

  test do
    system "#{bin}/pretender", "--version"
  end
end
