class Bkpdir < Formula
  desc "Directory archiving CLI for macOS and Linux with Git-aware backups"
  homepage "https://github.com/fareedst/homebrew-bkpdir"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-arm64"
    sha256 "5773275feb7a180aaf0f9b3a7512e092f07749a402b0fc557fa5f1711be73bf0"
  else
    url "https://github.com/fareedst/homebrew-bkpdir/releases/download/v1.0.0/bkpdir-macos-amd64"
    sha256 "b96e7684dbda7ca7b42d190614f135430998c45e75bc961ccaf17c1c370cbfab"
  end

  # Skip Xcode requirement
  depends_on :macos

  def install
    if Hardware::CPU.arm?
      bin.install "bkpdir-macos-arm64" => "bkpdir"
    else
      bin.install "bkpdir-macos-amd64" => "bkpdir"
    end
  end

  test do
    system "#{bin}/bkpdir", "--version"
  end

  def caveats
    <<~EOS
      This formula installs pre-built binaries and does not require Xcode.
      If you encounter any issues, please report them at:
      https://github.com/fareedst/homebrew-bkpdir/issues
    EOS
  end
end 