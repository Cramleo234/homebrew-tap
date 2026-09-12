cask "initiative-planner-pro" do
  version "1.3.1"
  sha256 "a8acb9798dcc81b14fefd782caef51c171c9bc5d3d40ae4f1169d06fb4181a9e"

  # Cramleo234 anpassen, sobald das Release-Repo existiert.
  url "https://github.com/Cramleo234/initiative-planner-pro/releases/download/v#{version}/InitiativePlannerPro-#{version}.dmg"
  name "Initiative Planner Pro"
  desc "Initiative-Tracker für Tabletop-Rollenspiele (5e-kompatibel) — Kampf, Monsterdatenbank, Status, Player View"
  homepage "https://github.com/Cramleo234/initiative-planner-pro"

  depends_on macos: :sequoia

  app "Initiative Planner Pro.app"

  zap trash: [
    "~/Library/Application Support/InitiativePlannerProMac",
  ]

  caveats <<~EOS
    Installation bei Homebrew 6 oder neuer (Taps von Drittanbietern muessen
    freigegeben werden):
      brew tap Cramleo234/tap
      brew trust Cramleo234/tap
      brew install --cask initiative-planner-pro

    Die App wird ohne Monsterdaten ausgeliefert — eigene Sammlungen lassen sich
    über den Import (Markdown-Dateien/Ordner) in die App laden.

    Die App ist derzeit nicht notarisiert. Beim ersten Start ggf.:
    Rechtsklick auf die App → „Öffnen“
  EOS
end
