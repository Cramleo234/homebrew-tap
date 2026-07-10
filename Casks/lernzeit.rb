cask "lernzeit" do
  version "2.4.0"
  sha256 "8a7f8041e1e639ae4437e7c5aaed0af17e7f0d3b80ec8059bee01ef9cc59f4da"

  url "https://github.com/Cramleo234/Lernzeit/releases/download/v#{version}/Lernzeit-#{version}.zip"
  name "Lernzeit"
  desc "Minimalist study timer for macOS with a modern translucent interface"
  homepage "https://github.com/Cramleo234/Lernzeit"

  depends_on macos: :tahoe

  app "Lernzeit.app"

  caveats <<~EOS
    Notes for the first installation:
      - Homebrew's trust prompt (brew trust cramleo234/tap) is standard for
        third-party taps and only needs to be accepted once.
      - Lernzeit is not notarized. If macOS blocks the first launch, allow it under:
        System Settings → Privacy & Security → "Open Anyway"
  EOS

  zap trash: [
    "~/Library/Application Support/Lernzeit",
    "~/Library/Containers/com.cramleo.Lernzeit",
    "~/Library/Group Containers/group.com.cramleo.Lernzeit",
    "~/Library/Preferences/com.cramleo.Lernzeit.plist",
    "~/Library/Preferences/com.cramleo.Lernzeit.shared.plist",
  ]
end
