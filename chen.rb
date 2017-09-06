class Chen < Formula
  desc "Change directory entries with your text editor"
  homepage "https://github.com/soveran/chen"
  url "https://github.com/soveran/chen/archive/1.0.0.tar.gz"
  sha256 "3a536a6e758c82a096484b2a108a2c054c57854f7b18c477648da098265ea5c5"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "#{bin}/chen", shell_output('which chen').strip
  end
end
