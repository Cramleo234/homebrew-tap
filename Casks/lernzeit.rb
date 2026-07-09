cask "lernzeit" do
  version "1.0.0"
  sha256 "bf82506cea21d999bd30577fcff38b55300dbdc5677f379ca8a1a9455cc8bbe3"

  url "https://github.com/Cramleo234/Lernzeit/releases/download/v#{version}/Lernzeit-#{version}.zip"
  name "Lernzeit"
  desc "Minimalistische Lern-Timer-App für macOS mit Liquid Glass Design"
  homepage "https://github.com/Cramleo234/Lernzeit"

  depends_on macos: :tahoe

  app "Lernzeit.app"

  caveats <<~EOS
    Lernzeit ist aktuell nicht notarisiert. Falls macOS den Start blockiert:
      - Rechtsklick auf die App → „Öffnen", oder
      - Installation mit: brew install --cask --no-quarantine lernzeit
  EOS

  zap trash: [
    "~/Library/Containers/com.cramleo.Lernzeit",
  ]
end
