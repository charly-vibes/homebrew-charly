# typed: false
# frozen_string_literal: true

class Specodelic < Formula
  desc "Markdown specification format (Intent / Constraints / Model / Properties) and the spk CLI"
  homepage "https://github.com/charly-vibes/specodelic"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.14.0/specodelic_0.14.0_darwin_arm64.tar.gz"
      sha256 "efc67249ed54687d446f80a8e25a3355f0db04b9f19a415f93631191d605eb7a"
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.14.0/specodelic_0.14.0_darwin_amd64.tar.gz"
      sha256 "57d716336f82e37d7015ec50bdf571babeaca5d57759adf45fa7995b7032e10b"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/specodelic/releases/download/v0.14.0/specodelic_0.14.0_linux_arm64.tar.gz"
        sha256 "5c1d87397ed429b3756f0c7a48dce96674d9b310a6d508ed86be31b262c8bafa"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/specodelic/releases/download/v0.14.0/specodelic_0.14.0_linux_amd64.tar.gz"
      sha256 "3a66103bacc705048ce78091f05c47faf6038e8a1b7960f3039df288853ab265"
    end
  end

  def install
    bin.install "specodelic"
    bin.install "spk"
  end

  test do
    system "#{bin}/specodelic", "--version"
    system "#{bin}/spk", "--version"
  end
end
