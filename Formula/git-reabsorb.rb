class GitReabsorb < Formula
  desc "Reorganize git commits by unstaging and recommitting with new structure"
  homepage "https://github.com/AllyMarthaJ/git-reabsorb"
  url "https://github.com/AllyMarthaJ/git-reabsorb/archive/refs/tags/0.1.0.tar.gz"
  sha256 "d666a2a595bb67caffd955519d6d38637129e0a0a263842859c8d21908909d16"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-reabsorb", "--version"
  end
end
