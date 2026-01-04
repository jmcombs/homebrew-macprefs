class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v0.1.0/macprefs-v0.1.0-macos-universal.zip"
  sha256 "b5c21aee4e180c4f04be27bc6255241815f27c6fdef5c73aed5682c262155f2a"
  version "v0.1.0"
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
