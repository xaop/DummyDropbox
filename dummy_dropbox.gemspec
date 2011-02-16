

Gem::Specification.new do |gem|
  gem.name    = 'dummy_dropbox'
  gem.version = '0.0.1'
  gem.date    = Date.today.to_s

  gem.summary = "Dummy monkey patching for the dropbox ruby gem: http://rubygems.org/gems/dropbox"
  gem.description = "Very simple library for mocking the dropbox_ruby_gem"

  gem.authors  = "Fernando Guillen"
  gem.email    = 'fguillen.mail@gmail.com'
  gem.homepage = 'http://github.com/xaop/dummy_dropbox'

  gem.add_dependency('dropbox')
  gem.add_development_dependency('rspec', [">= 2.0.0"])

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*'] & `git ls-files -z`.split("\0")
end

