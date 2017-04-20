class Clac < Formula
  desc "A command line, stack-based calculator with postfix notation"
  homepage "https://github.com/soveran/clac"
  url "https://github.com/soveran/clac/archive/0.2.1.tar.gz"
  sha256 "8cd15e387441b372f68216888d00dfaaf2e486bf6622b2eb7f122487d2476087"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "7", shell_output('clac "3 4 +"').strip
  end
end
