cask "fotos" do
  version "0.3.0"

  on_linux do
    url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos_0.3.0_amd64.AppImage"
    sha256 "b0cd284e0442fb98250a6ddf387ca6d0d6b9dfbd45d4d13c4d08417d2ed926fe"
  end

  name "Fotos"
  desc "AI-powered screenshot capture and analysis tool"
  homepage "https://github.com/charly-vibes/fotos"

  on_linux do
    binary "fotos_\#{version}_amd64.AppImage", target: "fotos"
  end

  zap trash: [
    "~/.config/fotos",
    "~/.local/share/fotos",
  ]
end
