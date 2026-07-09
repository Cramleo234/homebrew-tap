cask "lernzeit" do
  version "2.3.2"
  sha256 "92a9687a182b8a934d33a9dfe62c356e73d8229dcc9ac19a39352c764433630a"

  url "https://github.com/Cramleo234/Lernzeit/releases/download/v#{version}/Lernzeit-#{version}.zip"
  name "Lernzeit"
  desc "Minimalistische Lern-Timer-App für macOS mit modernem Glas-Design"
  homepage "https://github.com/Cramleo234/Lernzeit"

  depends_on macos: :tahoe

  app "Lernzeit.app"

  caveats <<~EOS
    Hinweise zur ersten Installation:
      - Die Homebrew-Vertrauensabfrage (brew trust cramleo234/tap) ist bei
        allen Taps außerhalb von homebrew/core Standard und nur einmal nötig.
      - Lernzeit ist nicht notarisiert. Falls macOS den ersten Start
        blockiert, erlaube die App selbst unter:
        Systemeinstellungen → Datenschutz & Sicherheit → "Dennoch öffnen"
  EOS

  zap trash: [
    "~/Library/Application Support/Lernzeit",
    "~/Library/Containers/com.cramleo.Lernzeit",
    "~/Library/Group Containers/group.com.cramleo.Lernzeit",
    "~/Library/Preferences/com.cramleo.Lernzeit.plist",
    "~/Library/Preferences/com.cramleo.Lernzeit.shared.plist",
  ]
end
