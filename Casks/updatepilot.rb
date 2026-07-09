cask "updatepilot" do
  version "0.0.3"
  sha256 "c8f089e625b50037231579cdeef40421cfab641ab46ef6f6102cfaa491a7f540"

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
