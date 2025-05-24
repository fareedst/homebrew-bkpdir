cask "bkpdir" do
  version "1.0.0"
  sha256 arm:   "5773275feb7a180aaf0f9b3a7512e092f07749a402b0fc557fa5f1711be73bf0",
         intel: "b96e7684dbda7ca7b42d190614f135430998c45e75bc961ccaf17c1c370cbfab",
         ubuntu20: "bcdc8b9bb9473c20624694725b1f4b621d82924da657f7ac3d9c441d53e01944",
         ubuntu22: "bcdc8b9bb9473c20624694725b1f4b621d82924da657f7ac3d9c441d53e01944",
         ubuntu24: "1d99edb9560a58fca62c4faa530325aa5679e328e3c01622f60ea9967477702e"

  on_arm do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-arm64"
  end
  on_intel do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-amd64"
  end

  on_ubuntu "20.04" do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-ubuntu20.04"
  end

  on_ubuntu "22.04" do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-ubuntu22.04"
  end

  on_ubuntu "24.04" do
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-ubuntu24.04"
  end

  name "bkpdir"
  homepage "https://github.com/fareedst/homebrew-bkpdir"

  binary "bkpdir-macos-#{Hardware::CPU.intel? ? "amd64" : "arm64"}", target: "bkpdir"
  binary "bkpdir-ubuntu#{OS::LINUX_VERSION}", target: "bkpdir" if OS.linux?
end 