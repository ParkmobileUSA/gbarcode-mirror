# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gbarcode}
  s.version = "0.98"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Angel Pizarro"]
  s.date = %q{2011-03-23}
  s.description = %q{A C extension that wraps the GNU Barcode project. For more Ruby-ish syntax, you should use the Rbarcode gem.}
  s.email = %q{angel@delagoya.com}
  s.extensions = ["ext/extconf.rb"]
  s.files = ["ext/barcode_wrap.c", "ext/codabar.c", "ext/code128.c", "ext/code39.c", "ext/code93.c", "ext/ean.c", "ext/i25.c", "ext/library.c", "ext/msi.c", "ext/pcl.c", "ext/plessey.c", "ext/ps.c", "ext/svg.c", "ext/barcode.h", "ext/extconf.rb", "test/assets", "test/assets/gb-code128b.eps", "test/gbarcode_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://gbarcode.rubyforge.org}
  s.rdoc_options = ["--exclude", ".c$"]
  s.require_paths = [".", "ext"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.4")
  s.rubyforge_project = %q{gbarcode}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A C extension that wraps the GNU Barcode project.}
  s.test_files = ["test/assets", "test/assets/gb-code128b.eps", "test/gbarcode_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
