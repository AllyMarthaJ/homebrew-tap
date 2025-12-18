class GitReabsorb < Formula
  desc "Vibed-up \"live\" demos"
  homepage "https://github.com/AllyMarthaJ/ribbit"
  url "https://github.com/AllyMarthaJ/ribbit/archive/refs/tags/0.1.0.tar.gz"
  sha256 ""e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ribbit", "--version"
  end
end
