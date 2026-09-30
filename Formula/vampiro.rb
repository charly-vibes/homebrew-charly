# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.5.0/vampiro_0.5.0_darwin_arm64.tar.gz"
      sha256 "402c6f82911eea2c6d065e8571069bcc4a6a3ead831b24b3efb50cc09d64ee92"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.5.0/vampiro_0.5.0_darwin_amd64.tar.gz"
      sha256 "1413a839d50f1a95fc4dcd43e7d39a6fd0d693303c86da6040486b3935aa1064"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.5.0/vampiro_0.5.0_linux_arm64.tar.gz"
        sha256 "b8696eaa75d182771b7f22cf8cbdbc930ee4e0cd639d22ba7e473aacd0a64e70"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.5.0/vampiro_0.5.0_linux_amd64.tar.gz"
      sha256 "a1e84089ed49143df7048dbedc3b787f96fb5cda380dc440ccde8d19623d52b6"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
