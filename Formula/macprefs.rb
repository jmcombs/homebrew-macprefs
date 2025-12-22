class Macprefs < Formula
  desc "Declarative macOS defaults manager"
  homepage "https://github.com/jmcombs/macprefs"
  url "https://github.com/jmcombs/macprefs/releases/download/v0.1.0/macprefs-0.1.0"
  sha256 "REPLACE_WITH_REAL_SHA256"
  license "Apache-2.0"

  depends_on :macos => :sonoma

  def install
    bin.install "macprefs-0.1.0" => "macprefs"
  end

  def post_install
    # Optional: run preflight check after install
    system bin/"macprefs", "preflight"
  end

  test do
    assert_match "Declarative macOS defaults manager", shell_output("#{bin}/macprefs --help")
  end
end
