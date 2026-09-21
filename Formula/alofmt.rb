class Alofmt < Formula
  desc "Fast, deterministic, configurable Ruby formatter"
  homepage "https://github.com/StileEducation/alofmt"
  url "https://github.com/StileEducation/alofmt/archive/refs/tags/0.1.1.tar.gz"
  sha256 "8b47b9b43215973de719cc52c33c0d576c925a672a85521f851942aa3aaa36dc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "value = 1\n", pipe_output("#{bin}/alofmt --no-config -", "value=1\n")
    assert_match version.to_s, shell_output("#{bin}/alofmt --version")
  end
end
