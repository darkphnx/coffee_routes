# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coffee_routes/version'

Gem::Specification.new do |spec|
  spec.name          = "coffee_routes"
  spec.version       = CoffeeRoutes::VERSION
  spec.authors       = ["Dan Wentworth"]
  spec.email         = ["dan@atechmedia.com"]
  spec.summary       = %q{Access your named Rails routes from your coffeescript}
  spec.homepage      = "http://darkphnx.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "actionpack", ">= 3.2"
end
