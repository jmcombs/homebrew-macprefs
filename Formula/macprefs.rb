class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.1/macprefs-v0.1.1-macos-universal.zip"
  sha256 "b47adf52cbf0e1c2850a2586c584d69f76b9a20580c320d89636b02ef4bac067"
  version "v0.1.1"
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
