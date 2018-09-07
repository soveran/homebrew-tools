class Hi < Formula
  desc "Filter lines from stdin matching a given string"
  homepage "https://github.com/soveran/hi"
  url "https://github.com/soveran/hi/archive/0.1.0.tar.gz"
  sha256 "291375bd7a56d22d4f5c594617d9e80ff30deb4235afdf225fb1b5b7bd63b9a5"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foo", shell_output("printf 'foo\nbar' | hi foo")
  end
end
