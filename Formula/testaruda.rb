# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.6/testaruda_0.5.6_darwin_arm64.tar.gz"
      sha256 "9724f8eed2229d72adf6cc44fa8a513363b453b7e5d7557893df88fd51d85555"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.6/testaruda_0.5.6_darwin_amd64.tar.gz"
      sha256 "55f2dce74469765df5b37abecf47aa3302850f63e41f975f1782e84bb11b3f97"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.6/testaruda_0.5.6_linux_arm64.tar.gz"
        sha256 "fb0b62b81e26f200bf67b65dd152573c17a83bb274a5e5efb5e477b9379d212b"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.6/testaruda_0.5.6_linux_amd64.tar.gz"
      sha256 "3e54a7a6a6dedb54b84ef0638480fa5a4c88eaf9cb973d235ed4274acad64bc2"
    end
  end

  def install
    bin.install "testaruda"
    bin.install "testaruda-adapter-rust"
    bin.install "testaruda-adapter-python"
    bin.install "testaruda-adapter-typescript"
    bin.install "testaruda-adapter-clojure"
  end

  test do
    system "\#{bin}/testaruda", "--version"
  end
end
