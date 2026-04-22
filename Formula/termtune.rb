# Homebrew formula for termtune — source build via Cargo.
#
# Install from a tap:
#   brew tap YOUR_GITHUB_USERNAME/termtune
#   brew install termtune
#
# Or install directly:
#   brew install YOUR_GITHUB_USERNAME/termtune/termtune

class Termtune < Formula
  desc "Lightweight terminal YouTube audio player"
  homepage "https://github.com/joistich/termtune"
  url "https://github.com/joistich/termtune/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2a90df216059f5ab004c5b14410936025321060c7bd981657d24b01c60d67559"
  license "MIT"

  depends_on "rust" => :build
  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "termtune #{version}", shell_output("#{bin}/termtune --version").strip
  end
end
