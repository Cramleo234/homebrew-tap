cask "lernzeit" do
  version "2.0.1"
  sha256 "6ade5cff89b5ea7be904ddeda53cb54eac45377f1eafadd2a3813e44337977db"

  url "https://github.com/Cramleo234/Lernzeit/releases/download/v#{version}/Lernzeit-#{version}.zip"
  name "Lernzeit"
  desc "Minimalistische Lern-Timer-App für macOS mit modernem Glas-Design"
  homepage "https://github.com/Cramleo234/Lernzeit"

  depends_on macos: :tahoe

  app "Lernzeit.app"

  caveats <<~EOS
    Lernzeit ist aktuell nicht notarisiert. Falls macOS den Start blockiert,
    erlaube die App unter Systemeinstellungen → Datenschutz & Sicherheit.
  EOS

  zap trash: [
    "~/Library/Containers/com.cramleo.Lernzeit",
  ]
end
