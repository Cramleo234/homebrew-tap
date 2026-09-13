cask "initiative-planner-pro" do
  version "1.4.0"
  sha256 "4ed71675cf59d2650181bc81572dc7058dc24ffdb3ba1cb5aff858a762fc3a05"

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
