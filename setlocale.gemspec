# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{setlocale}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Strzelecki"]
  s.date = %q{2009-07-09}
  s.description = %q{POSIX locale natural language formatting for Ruby}
  s.email = %q{ono@java.pl}
  s.extensions = ["lib/extconf.rb"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "MIT-LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "lib/extconf.rb",
     "lib/setlocale.c",
     "lib/setlocale.rb",
     "test/setlocale_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/nanoant/setlocale}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{POSIX locale natural language formatting for Ruby}
  s.test_files = [
    "test/setlocale_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
