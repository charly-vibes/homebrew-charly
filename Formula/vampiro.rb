# typed: false
# frozen_string_literal: true

class Vampiro < Formula
  desc "Program analysis tool for verifying compliance with laws and policies"
  homepage "https://github.com/charly-vibes/vampiro"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.0/vampiro_0.6.0_darwin_arm64.tar.gz"
      sha256 "3e6273316f29fca06d678fe46e73ba994684ca86cfd6aee488847320102b1c5c"
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.0/vampiro_0.6.0_darwin_amd64.tar.gz"
      sha256 "c330c579b91798b3e8a60a247b8be15344cbc27edec2afeb4c5c2f49e92ffdb5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.0/vampiro_0.6.0_linux_arm64.tar.gz"
        sha256 "0ff5e46f0f1654365e5cfbdd66863d234715857590053d709e9db2aac3dab742"
      end
    end
    on_intel do
      url "https://github.com/charly-vibes/vampiro/releases/download/v0.6.0/vampiro_0.6.0_linux_amd64.tar.gz"
      sha256 "1ce6b6826b4cd627f7adb4964a1a76dddbe925d49bcc3dd1ae31550dcc62cc57"
    end
  end

  def install
    bin.install "vampiro"
  end

  test do
    system "#{bin}/vampiro", "--version"
  end
end
