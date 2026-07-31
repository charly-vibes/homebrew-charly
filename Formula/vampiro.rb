# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.3.1/vampiro_0.3.1_darwin_arm64.tar.gz"
      sha256 "791c27d3d29c2745b455769e8e1204a23e02ff25452c072b19ecccf3fcc86afc"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.3.1/vampiro_0.3.1_darwin_amd64.tar.gz"
      sha256 "22ab3d2dbd65d9c295b22bdca699c3c1f2b6891314b80529e35ec342bb51811c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.3.1/vampiro_0.3.1_linux_arm64.tar.gz"
        sha256 "c55d6337d8f94666db191d467aca0d939131fcfc78a5c09760b020d5110e176c"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.3.1/vampiro_0.3.1_linux_amd64.tar.gz"
      sha256 "9f722ab8cac751619a46b75ff1c221601b63d3fbcc4e35284419297d28824f76"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
