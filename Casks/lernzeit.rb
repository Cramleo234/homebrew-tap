cask "lernzeit" do
  version "3.0.0"
  sha256 "c975e7d1a823fa3bad6fe4c619e0d6c131324498faf040bb25feffac3d762e2b"

  url "https://github.com/Cramleo234/Lernzeit/releases/download/v#{version}/Lernzeit-#{version}.zip"
  name "Lernzeit"
  desc "Minimalist study timer with a modern translucent interface"
  homepage "https://github.com/Cramleo234/Lernzeit"

  depends_on macos: :tahoe

  app "Lernzeit.app"

  zap trash: [
    "~/Library/Application Support/Lernzeit",
    "~/Library/Containers/com.cramleo.Lernzeit",
    "~/Library/Group Containers/group.com.cramleo.Lernzeit",
    "~/Library/Preferences/com.cramleo.Lernzeit.plist",
    "~/Library/Preferences/com.cramleo.Lernzeit.shared.plist",
  ]

  caveats <<~EOS
    Notes for the first installation:
      - Homebrew's trust prompt (brew trust cramleo234/tap) is standard for
        third-party taps and only needs to be accepted once.
      - Lernzeit is not notarized. If macOS blocks the first launch, allow it under:
        System Settings → Privacy & Security → "Open Anyway"
  EOS
end
