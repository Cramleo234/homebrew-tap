cask "updatepilot" do
  version "0.1.1"
  sha256 "949a4aee2ecac99364919be5f9b9a88b8a42a1ff9f08307d2d0ffdac37b1cf5d"

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
