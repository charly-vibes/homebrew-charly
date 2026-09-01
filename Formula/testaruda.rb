# typed: false
# frozen_string_literal: true

class Testaruda < Formula
  desc "Test selection and prioritization"
  homepage "https://github.com/charly-vibes/testaruda"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.4.0/testaruda_0.4.0_darwin_arm64.tar.gz"
      sha256 "45218566b3d54cd30c6cd2c13a099fb0ac4e6b0031ba61d621a4d5ae8d7f51e7"
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.4.0/testaruda_0.4.0_darwin_amd64.tar.gz"
      sha256 "8d5db291fb146c41c6d81480651d8dbeb7a2986f177ed32a11eef1c7f324f8e5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/testaruda/releases/download/v0.4.0/testaruda_0.4.0_linux_arm64.tar.gz"
        sha256 "ade1d64734082743f5ddbaf2cdd47b6135d8da46274c0d63522ab8f85e502bc4"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/testaruda/releases/download/v0.4.0/testaruda_0.4.0_linux_amd64.tar.gz"
      sha256 "dfeb2916fb0975cd42eadb3609cfae28df1ccd49c074db8bb40043dfea06dde4"
    end
  end

  def install
    bin.install "testaruda"
    bin.install "testaruda-adapter-rust"
    bin.install "testaruda-adapter-python"
  end

  test do
    system "#{bin}/testaruda", "--version"
  end
end
