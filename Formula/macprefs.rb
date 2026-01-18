class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.4/macprefs-v0.1.4-macos-universal.zip"
  sha256 "19e8251a0af21524ec4c3596bc37b333eca5fa6c2d97acafd9acc33891f2c500"
  version "v0.1.4"
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
