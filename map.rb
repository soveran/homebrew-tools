class Map < Formula
  desc "Map lines from stdin to commands"
  homepage "https://github.com/soveran/map"
  url "https://github.com/soveran/map/archive/0.1.0.tar.gz"
  sha256 "5f971b9c24322ee5cdcd678c71b88f366d50f6888e0352e6751ba710ce0b7a7e"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foobar", shell_output("printf 'foo\nbar' | map f 'printf $f'")
  end
end
