class Mailcat < Formula
  desc "Fake SMTP server that prints emails to stdout"
  homepage "https://github.com/soveran/mailcat"
  url "https://github.com/soveran/mailcat/archive/1.1.0.tar.gz"
  sha256 "b2792ef3c74b444c456fad042ebee3fb1c36b3ab7ece1ffda548e989bd7604a2"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "#{bin}/mailcat", shell_output('which mailcat').strip
  end
end
