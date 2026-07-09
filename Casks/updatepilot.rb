cask "updatepilot" do
  version "0.0.5"
  sha256 "855afc0941937dbb3a24ba07f9e2b8e31d856bad5e25744d5f00f447b6bdfa47"

  url "https://github.com/Cramleo234/MacUpdateButton/releases/download/v#{version}/UpdatePilot-#{version}.dmg"
  name "UpdatePilot"
  desc "macOS-App für sichere Ein-Knopf-Softwareupdates"
  homepage "https://github.com/Cramleo234/MacUpdateButton"

  depends_on macos: :sonoma

  app "UpdatePilot.app"

  caveats <<~EOS
    Hinweise zur ersten Installation:
      - Die Homebrew-Vertrauensabfrage (brew trust cramleo234/tap) ist bei
        allen Taps außerhalb von homebrew/core Standard und nur einmal nötig.
      - UpdatePilot ist noch nicht notarisiert. Falls macOS den ersten Start
        blockiert, erlaube die App unter:
        Systemeinstellungen → Datenschutz & Sicherheit → "Dennoch öffnen"
  EOS

  zap trash: [
    "~/Library/Preferences/com.cramleo.UpdatePilot.plist",
    "~/Library/Saved Application State/com.cramleo.UpdatePilot.savedState",
  ]
end
