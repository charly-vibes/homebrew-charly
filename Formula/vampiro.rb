# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_darwin_arm64.tar.gz"
      sha256 "059ed3217277f4b00360c77193757990cd8f7d3013d7376879ad414e2c18d342"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_darwin_amd64.tar.gz"
      sha256 "3f7a63834cc3f8749abaa27caf3e8e10ce9f5006d4cdab816bbbda0aac20d324"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_arm64.tar.gz"
        sha256 "e276570a5a362366668245200250fa0252cb33190816c34e85325eb43eda6b13"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.1/vampiro_0.6.1_linux_amd64.tar.gz"
      sha256 "821927e0ce0cf04b89a7c5b80b365afb84316d862c354dd843cbf65d325a0ed0"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
