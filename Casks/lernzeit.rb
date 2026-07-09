cask "lernzeit" do
  version "2.0.2"
  sha256 "af9ce2a5cdd0d17333a86ce0fca445d253b0aab1906a7db273f7a36a91eecb26"

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
