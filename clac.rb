class Clac < Formula
  desc "A command line, stack-based calculator with postfix notation"
  homepage "https://github.com/soveran/clac"
  url "https://github.com/soveran/clac/archive/0.2.0.tar.gz"
  sha256 "371776f8a8ce02cfb9edb3ada2dcc637396323ca831a61ddad38dfa8fe4d8920"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "7", shell_output('clac "3 4 +"').strip
  end
end
