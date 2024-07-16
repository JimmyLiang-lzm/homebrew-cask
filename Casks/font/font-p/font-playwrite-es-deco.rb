cask "font-playwrite-es-deco" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesdeco/PlaywriteESDeco%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Deco"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Deco"

  font "PlaywriteESDeco[wght].ttf"

  # No zap stanza required
end
