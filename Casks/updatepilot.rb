cask "updatepilot" do
  version "0.0.2"
  sha256 "d91b2f81819c25c59fcd82956c5030ef3c50a70ebb71e53ffef837e7a5eb808f"

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
