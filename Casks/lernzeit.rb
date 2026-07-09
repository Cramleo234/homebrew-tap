cask "lernzeit" do
  version "2.0.3"
  sha256 "2b768d13074fa38a5e430947720f4328cd5aaca1d45e9f7350a6b6a0d63394cb"

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
