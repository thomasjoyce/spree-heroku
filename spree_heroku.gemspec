# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_heroku'
  s.version     = '2.1'
  s.summary     = 'Spree extension to setup Spree on Heroku'
  s.description = 'Spree extension to setup Spree on Heroku'
  s.required_ruby_version = '>= 1.8.7'

  s.author        = 'Trung Lê'
  s.email         = 'joneslee85@gmail.com'
  s.homepage      = 'https://github.com/joneslee85/spree-heroku'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  s.add_dependency 'aws-s3'
  s.add_dependency 'spree_core', '>= 0.70.0'
  s.add_development_dependency 'rspec-rails'
end
