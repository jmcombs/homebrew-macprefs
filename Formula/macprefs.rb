class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://github.com/jmcombs/macprefs"
  url "https://github.com/jmcombs/macprefs/releases/download/vv0.1.0/macprefs-v0.1.0-macos-universal.zip"
  sha256 "b4cf569d992a00c80d8a22d26ebc5dc39a631705caedd6b786ebeca95c5f0ce1"
  license :cannot_represent
  depends_on macos: :sonoma

  def install
    bin.install "macprefs"
  end

  test do
    system "#{bin}/macprefs", "about"
  end
end
