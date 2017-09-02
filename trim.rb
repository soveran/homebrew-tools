class Trim < Formula
  desc "Read from stdin and remove a prefix from each line"
  homepage "https://github.com/soveran/trim"
  url "https://github.com/soveran/trim/archive/0.1.0.tar.gz"
  sha256 "3339914dfdac0cdfa2ec366b9db4e8ab84eb83b2a82e3d37cc526e8686d1e4b7"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foo", shell_output('echo "# foo" | trim').strip
  end
end
