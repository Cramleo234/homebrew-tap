cask "lernzeit" do
  version "2.0.0"
  sha256 "45f5933cc04ae0f83ec6094f962c4b40d35d496e1baed6d787428c2e90f8b28f"

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
