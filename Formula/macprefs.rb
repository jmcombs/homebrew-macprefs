class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://macprefs.app"
  url "https://github.com/jmcombs/homebrew-macprefs/releases/download/v2.0.0/macprefs-v2.0.0-macos-universal.zip"
  sha256 "a54db968f3954dce7963672fabe65666e653f0876c712e69f6cbf31e0c1a14cb"
  version "v2.0.0"
  license :cannot_represent

  depends_on macos: :sonoma

  def install
    bin.install "macprefs"
  end

  def caveats
    <<~EOS
      macprefs is free — all features, all domains, no tiers.
      JSON output, headless apply, filtering, and rollback are
      available to everyone.
      
      Website: https://macprefs.app
    EOS
  end

  test do
    system "#{bin}/macprefs", "about"
  end
end
