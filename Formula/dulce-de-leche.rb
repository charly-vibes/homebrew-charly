# typed: false
# frozen_string_literal: true

class DulceDeLeche < Formula
  desc "Orchestrator for the charly-vibes tool ecosystem"
  homepage "https://github.com/charly-vibes/dulce-de-leche"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.3.0/ddl_0.3.0_darwin_arm64.tar.gz"
      sha256 "9b9f06813616f64bb3266937463f17fda3ac396c69b1bcaa6bab1b2d69e0bab7"
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.3.0/ddl_0.3.0_darwin_amd64.tar.gz"
      sha256 "88503a1944471f7dbfd57bae1c6819802c4892c22eb1648b9ce5299bb56bfc6f"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.3.0/ddl_0.3.0_linux_arm64.tar.gz"
        sha256 "b62565db2fb0a74ceecaa37c0b8945ffed3d59550f958f7a64b627d9e87f57d8"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/dulce-de-leche/releases/download/v0.3.0/ddl_0.3.0_linux_amd64.tar.gz"
      sha256 "a814df1d413b87fc624b0c530bba51ae316e023491500d42adc8eb176b8560fe"
    end
  end

  def install
    bin.install "ddl"
  end

  test do
    system "#{bin}/ddl", "--version"
  end
end
