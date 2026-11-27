# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Language-agnostic test selection engine"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.5.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.10/testaruda_0.5.10_darwin_arm64.tar.gz"
      sha256 "20a5abd4310858f8bf0b80d566f6239c16b1523f0dcf8d7a0751934c27979524"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.10/testaruda_0.5.10_darwin_amd64.tar.gz"
      sha256 "7db5a12bef6a97ffc677b2db2cc3921021078105bdd4375b50b4a8bca8ba76fd"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.10/testaruda_0.5.10_linux_arm64.tar.gz"
        sha256 "87ecd67dc37c0670fd217b08221efd8ea3d54ad9fd4808f5117c2a5adadfcfe7"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.5.10/testaruda_0.5.10_linux_amd64.tar.gz"
      sha256 "050be47a3f393a035ae07a4d1eb5d665a4c5f1b5492c677122ead1f664989a5c"
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
