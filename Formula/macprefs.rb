class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.3/macprefs-v0.1.3-macos-universal.zip"
  sha256 "17b916ad1682a2ccc9e73795ba96e2db83813dd44186964822a0f9c50a2b1717"
  version "v0.1.3"
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
