class Prep < Formula
  desc "Read from stdin and prepend a string to each line while preserving identation."
  homepage "https://github.com/soveran/prep"
  url "https://github.com/soveran/prep/archive/0.1.0.tar.gz"
  sha256 "685aa14e2cfd71fefd541bb412e1d5073916e7ff699c59f52df08cb8be4c46c3"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "# foo", shell_output('echo foo | prep').strip
  end
end
