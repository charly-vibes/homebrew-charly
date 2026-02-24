class Bichos < Formula
  include Language::Python::Virtualenv

  desc "Bio-Mimetic Framework for Agentic Software QA"
  homepage "https://github.com/charly-vibes/bichos"
  url "https://github.com/charly-vibes/bichos/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"bichos", "--version"
  end
end
