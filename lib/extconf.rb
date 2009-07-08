#!/usr/bin/env ruby
# extconf.rb
require 'mkmf'
extension_name = 'setlocale_ext'
header = "locale.h"
dir_config(extension_name)
if have_header(header)
  lc = %w[CTYPE NUMERIC TIME COLLATE MONETARY MESSAGES ALL]
  lc = lc.delete_if {|n| !have_macro("LC_#{n}", header)}.
    collect {|n| "def(#{n.downcase}, LC_#{n})"}.
    join(' ')
  $defs << "-Dforeach_categories(def)=\"#{lc}\""
  create_header
  create_makefile(extension_name)
end
