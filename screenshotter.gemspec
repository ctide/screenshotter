# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'screenshotter/version'

Gem::Specification.new do |spec|
  spec.name          = "screenshotter"
  spec.version       = Screenshotter::VERSION
  spec.authors       = ["ctide"]
  spec.email         = ["christide@christide.com"]
  spec.description   = %q{Simple gem to take screenshots of a URL at various dimensions}
  spec.summary       = %q{Very basic gem that just uses webdriver + the chrome helper to take screenshots of URLs}
  spec.homepage      = "http://www.github.com/ctide/screenshotter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "headless"
  spec.add_dependency "selenium-webdriver"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
