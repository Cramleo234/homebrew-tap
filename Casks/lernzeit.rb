cask "lernzeit" do
  version "2.3.1"
  sha256 "9ad647e83f91d17b4041b28366132bd797c38d25d8482a9da4d7193dd5ff0346"

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
