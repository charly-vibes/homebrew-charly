# typed: false
# frozen_string_literal: true

class Ah < Formula
  desc "Behavioral specification testing"
  homepage "https://github.com/charly-vibes/espectacular"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.6.0/ah_0.6.0_darwin_arm64.tar.gz"
      sha256 "0cef915c0ce5c2ab71107ac62a5ab846f8ba41a62b5f62487ff7062b862d4d80"
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.6.0/ah_0.6.0_darwin_amd64.tar.gz"
      sha256 "a47103447a975922c3cf7201f79645ca4d960adea15efa80af2b294a21b5d9f5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/espectacular/releases/download/v0.6.0/ah_0.6.0_linux_arm64.tar.gz"
        sha256 "f2a3ae3b652614a64dfa805f163128984c75a016ad466ba5137504b6b85db185"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/espectacular/releases/download/v0.6.0/ah_0.6.0_linux_amd64.tar.gz"
      sha256 "cb5db74c37526ddaab8b181d19bea1bef113fc5dbe6484d4153ba2bb2397f918"
    end
  end

  def install
    bin.install "ah"
  end

  test do
    system "#{bin}/ah", "--version"
  end
end
