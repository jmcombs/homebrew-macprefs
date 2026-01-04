class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.2/macprefs-v0.1.2-macos-universal.zip"
  sha256 "1a9f4a23a866578f7c552acf9dbe7ac1c50f07658bc1e947ac51b0c328fe708f"
  version "v0.1.2"
  license :cannot_represent

  depends_on macos: :sonoma

  def install
    bin.install "macprefs"
  end

  def caveats
    <<~EOS
      macprefs is proprietary commercial software.
      
      FREE TIER: Apple domains only, personal use
      PRO TIER: All domains, JSON output, headless mode
      
      Website: https://macprefs.app
    EOS
  end

  test do
    system "#{bin}/macprefs", "about"
  end
end
