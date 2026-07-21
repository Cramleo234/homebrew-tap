cask "initiative-planner-pro" do
  version "1.0.0"
  sha256 "d85c2a1370417c6351046d36738ab606eea01c7e7f49d55d1d64e9396b712234"

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
    Die App wird ohne Monsterdaten ausgeliefert — eigene Sammlungen lassen sich
    über den Import (Markdown-Dateien/Ordner) in die App laden.

    Die App ist derzeit nicht notarisiert. Beim ersten Start ggf.:
    Rechtsklick auf die App → „Öffnen“
  EOS
end
