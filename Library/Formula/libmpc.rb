require 'formula'

class Libmpc < Formula
  homepage 'http://multiprecision.org'
  url 'http://multiprecision.org/mpc/download/mpc-1.0.1.tar.gz'
  sha1 '8c7e19ad0dd9b3b5cc652273403423d6cf0c5edf'

  depends_on 'gmp'
  depends_on 'mpfr'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make check"
    system "make install"
  end
end
