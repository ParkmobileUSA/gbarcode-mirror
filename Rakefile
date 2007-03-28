require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'rake/packagetask'
require 'rake/gempackagetask'
require 'rake/rdoctask'

AUTH = "Angel Pizarro"  # can also be an array of Authors
AUTH_EMAIL = "angel@delagoya.com"
DESC_SHORT = "A barcode library that wraps GNU Barcode using SWIG."
DESC_LONG = DESC_SHORT + " " + "Most popular encoding schemes are supported (Code 39, UPC, ISBN, etc.). See the README for a full listing." +
" For more Ruby-ish syntax, use the Gbarcode::Rbarcode module."
GEM_NAME = "gbarcode" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "gbarcode" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
GEM_VERSION = "0.98"
# RDOC_OPTS = ["--diagram"]
RDOC_OPTS = ["--exclude", "\.c$"]

gem_spec = Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = GEM_VERSION
  s.summary = DESC_SHORT
  s.description = DESC_LONG
  s.author = AUTH

  s.test_files = FileList['test/**/*']

  s.files = FileList['lib/**/*.rb', 'README.txt', 'LICENSE.txt', 'CHANGELOG.txt', 'doc/**/*.*', 'ext/**/*']
  s.require_paths = Dir['{lib,ext}'] 
  s.autorequire = ['gbarcode']
  s.bindir = "bin"
  #s.default_executable = ""
  s.add_dependency("rmagick",">=1.15.4")
  #s.add_dependency("", "")
  s.extensions << "ext/extconf.rb"
  s.extra_rdoc_files = ["README.txt"]
  s.has_rdoc = true
  s.rdoc_options = RDOC_OPTS
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.8.5"
  s.rubyforge_project = "gbarcode"
end

desc "package the gem"
Rake::GemPackageTask.new(gem_spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
  # rm_f FileList['pkg/**/*.*']
end



desc "Run test code"
Rake::TestTask.new(:test) do |t|
  t.libs << ["ext", "lib", "test"]
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc "Create documentation"
Rake::RDocTask.new(:docs) do |rd|
  rd.main = "README.txt"
  rd.rdoc_files.include("./*.txt", "lib/**/*.rb")
  rd.options =  RDOC_OPTS
end

desc "Makes the Makefile"
task :extconf do 
  system 'cd ext/; ruby extconf.rb'
end

desc "Compiles extensions"
task :compile => [:extconf] do 
  system 'cd ext/; make'
end
