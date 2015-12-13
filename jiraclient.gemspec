# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jiraclient/version'

Gem::Specification.new do |spec|
  spec.name          = 'JiraClient'
  spec.version       = JiraClient::VERSION
  spec.authors       = ['James Ridgway']
  spec.email         = ['myself@james-ridgway.co.uk']

  spec.summary       = 'A JIRA API client'
  spec.description   = 'A JIRA API client'
  spec.homepage      = 'http://www.james-ridgway.co.uk'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'httparty', '~> 0.13'
end
