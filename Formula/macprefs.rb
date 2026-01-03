class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/macprefs/releases/download/v0.1.0/macprefs-0.1.0-macos-universal.zip"
  sha256 "REPLACE_WITH_REAL_SHA256"
  license :cannot_represent

  depends_on macos: :sonoma

  def install
    bin.install "macprefs"
  end

  def caveats
    <<~EOS
      macprefs is proprietary commercial software with tiered licensing:

      FREE TIER (Personal Use):
        - Apple domains only (com.apple.*, NSGlobalDomain)
        - Basic backup and restore functionality
        - Personal, non-commercial use

      PRO TIER (Commercial License Required):
        - Third-party domain support
        - JSON output format
        - Headless execution (--yes flag)
        - Advanced rollback features
        - Commercial use permitted

      For licensing inquiries: licensing@macprefs.app
      Website: https://macprefs.app
    EOS
  end

  test do
    system "#{bin}/macprefs", "about"
  end
end
