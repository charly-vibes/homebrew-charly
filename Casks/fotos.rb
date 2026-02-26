cask "fotos" do
  version "0.3.0"

  on_linux do
    url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos_0.3.0_amd64.AppImage"
    sha256 "998bd03506604244b55400c3634a34567a132979b3a81105b167d72c1590b718"
  end

  on_macos do
    url "https://github.com/charly-vibes/fotos/releases/download/v0.3.0/fotos_0.3.0_x64.dmg"
    sha256 :no_check
  end

  name "Fotos"
  desc "AI-powered screenshot capture and analysis tool"
  homepage "https://github.com/charly-vibes/fotos"

  on_linux do
    binary "fotos_\#{version}_amd64.AppImage", target: "fotos"
  end

  on_macos do
    app "Fotos.app"
  end

  zap trash: [
    "~/.config/fotos",
    "~/.local/share/fotos",
    "~/Library/Application Support/fotos",
    "~/Library/Caches/fotos",
    "~/Library/Preferences/io.github.charly.fotos.plist",
  ]
end
