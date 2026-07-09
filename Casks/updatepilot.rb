cask "updatepilot" do
  version "0.1.0"
  sha256 "22e64b4b970b55f3c63775c9744679cb0717fa2dae8a72a0a93c480583103dd6"

  url "https://github.com/Cramleo234/UpdatePilot/releases/download/v#{version}/UpdatePilot-#{version}.dmg"
  name "UpdatePilot"
  desc "macOS-App für sichere Ein-Knopf-Softwareupdates"
  homepage "https://github.com/Cramleo234/UpdatePilot"

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
