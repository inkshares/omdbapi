# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omdbapi/version'

Gem::Specification.new do |spec|
  spec.name          = "omdbapi"
  spec.version       = OMDB::VERSION
  spec.authors       = ["Casey Scarborough"]
  spec.email         = ["caseyscarborough@gmail.com"]
  spec.description   = '[In Progress] A wrapper for the omdbapi.com movie API.'
  spec.summary       = 'This gem provides easy access for information retrieval from omdbapi.com.'
  spec.homepage      = "https://github.com/caseyscarborough/omdb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'httparty', '0.11.0'
end
