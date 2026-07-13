cask "lernzeit" do
  version "2.4.2"
  sha256 "4c625a0a423663cc7ba6cd8ca2a2ed9d1d35dd6527335a1cfea6f2605307e185"

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
