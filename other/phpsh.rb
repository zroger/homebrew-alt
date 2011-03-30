require 'formula'

class Phpsh < Formula
  head 'git://github.com/facebook/phpsh.git'
  homepage 'http://www.phpsh.org/'

  depends_on 'python'
  depends_on 'readline'
  depends_on 'sqlite'

  depends_on 'sqlite3' => :python
  depends_on 'readline' => :python

  def install
    python = Formula.factory("python")
    system "#{python.bin}/python", "setup.py", "install",
           "--install-scripts", bin,
           "--install-data", share,
           "--record", (prefix + 'install.txt')
  end
end

