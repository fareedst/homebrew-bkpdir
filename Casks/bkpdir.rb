cask "bkpdir" do
  version "1.0.0"
  sha256 arm:   "5773275feb7a180aaf0f9b3a7512e092f07749a402b0fc557fa5f1711be73bf0",
         intel: "b96e7684dbda7ca7b42d190614f135430998c45e75bc961ccaf17c1c370cbfab"

  on_arm do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-arm64"
  end
  on_intel do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-amd64"
  end

  name "bkpdir"
  homepage "https://github.com/fareedst/homebrew-bkpdir"

  binary "bkpdir-macos-#{Hardware::CPU.intel? ? "amd64" : "arm64"}", target: "bkpdir"
end 