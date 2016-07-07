# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csn_primes/version'

Gem::Specification.new do |s|
  s.name        = 'csn_primes'
  s.version     = CsnPrimes::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Csaba S. Nemeth"]
  s.email       = 'cnemeth9@gmail.com'

  s.date        = '2016-07-06'
  s.summary     = "Prime multiplication table"
  s.description = "Prints multiplicaton table for the first ten prime numbers to STDOUT"
  s.homepage    = 'http://rubygems.org/gems/csn_primes'
  s.license     = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = Dir['bin/*'].map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.licenses = ['MIT']

  s.required_ruby_version = "~> 2.3.1"
  s.required_rubygems_version = ">= 2.5.6"

  s.add_development_dependency "bundler", "~> 1.11"
  s.add_development_dependency "rake", "~> 11.2"
  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "pry-byebug", "~> 3.4"
  s.add_development_dependency "rspec", "3.5"
  s.add_development_dependency "faker", "1.6.3"
  s.add_development_dependency "awesome_print", "~> 1.6"
  s.add_development_dependency "timecop", "~> 0.8"
  s.add_development_dependency "simplecov", "~> 0.10"
end
