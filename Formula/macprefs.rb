class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.0/macprefs-v0.1.0-macos-universal.zip"
  sha256 "b4cf569d992a00c80d8a22d26ebc5dc39a631705caedd6b786ebeca95c5f0ce1"
  version "0.1.0"
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
      
      For licensing: licensing@macprefs.app
    EOS
  end

  test do
    system "#{bin}/macprefs", "about"
  end
end
