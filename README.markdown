setlocale
===========
*setlocale* is POSIX locale natural language formatting for Ruby. Let's you override current Ruby process locale as simple as:

    Locale::all = 'en_US.UTF-8'

Or when you want to ensure that *Iconv* extensions will work fine:

    Locale::ctype = ''

Setup
=====
### 1. Install
    sudo gem install nanoant-setlocale -s http://gems.github.com/

Or from source:

    git clone git://github.com/nanoant/setlocale.git
    cd setlocale && rake install

Author
======
[Adam Strzelecki](http://www.nanoant.com/)
ono@java.pl

Released under MIT license, see `MIT-LICENSE` for details.
