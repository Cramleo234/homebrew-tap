cask "lernzeit" do
  version "2.1.0"
  sha256 "ef801d45c6fa6fc3faa185e01bdcf0bc8056892c525734209a2834a6af9dbdb0"

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
