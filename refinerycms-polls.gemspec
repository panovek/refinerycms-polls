# Encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'refinery/polls/version'

version = Refinery::Polls::Version.to_s

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-polls}
  s.version           = version
  s.description       = 'Ruby on Rails Polls extension for Refinery CMS'
  s.date              = '2012-07-03'
  s.summary           = 'Polls extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  #s.test_files        = `git ls-files -- {spec}/*`.split("\n")
  s.authors           = ['Agustin Viñao']
  s.email             = %q{agustinvinao@gmail.com}
  s.homepage          = 'https://github.com/agustinvinao/refinerycms-polls'
  s.license           = 'MIT'
  s.post_install_message = "Thanks for installing! If you have any ideas or comments please contact me agustinvinao@gmail.com"

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 3.0.0'
  s.add_dependency             'acts_as_indexed',     '~> 0.8.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing' , '~> 3.0.0'
end
