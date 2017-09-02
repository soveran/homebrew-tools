class Chen < Formula
  desc "Change directory entries"
  homepage "https://github.com/soveran/chen"
  url "https://github.com/soveran/chen/archive/0.1.0.tar.gz"
  sha256 "152328dc4bdee0a88c27939ea060deb103491bd97d5511f280d9a57c88859b21"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "#{bin}/chen", shell_output('which chen').strip
  end
end
