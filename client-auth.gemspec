# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_auth/version'

Gem::Specification.new do |spec|
  spec.name          = 'client-auth'
  spec.version       = ClientAuth::VERSION
  spec.authors       = ['Yuriy Lavryk', 'Xavier Hocquet']
  spec.email         = ['yuriy@getmatic.com', 'xavier@himaxwell.com']

  spec.summary       = 'Authentication client'
  spec.description   = 'Authentication for matic clients'
  spec.homepage      = 'https://github.com/himaxwell/client-auth'

  spec.files = Dir['lib/**/*.rb']
  spec.files += Dir['README.markdown']

  spec.require_paths = 'lib'

  spec.add_dependency 'rest-client'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.2'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rubocop', '~> 0.46'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.8'
end
