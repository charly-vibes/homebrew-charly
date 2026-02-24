cask "fotos" do
  version :latest
  sha256 :no_check

  on_linux do
    url "https://github.com/charly-vibes/fotos/releases/latest/download/fotos_#{version}_amd64.AppImage"
  end

  on_macos do
    url "https://github.com/charly-vibes/fotos/releases/latest/download/fotos_#{version}_x64.dmg"
  end

  name "Fotos"
  desc "AI-powered screenshot capture and analysis tool"
  homepage "https://github.com/charly-vibes/fotos"

  on_linux do
    binary "fotos_#{version}_amd64.AppImage", target: "fotos"
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
