# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "typeform/version"

Gem::Specification.new do |spec|
  spec.name          = "typeform"
  spec.version       = Typeform::VERSION
  spec.authors       = ["Clark Germany GmbH"]
  spec.email         = ["steffen.glomb@clark.de"]
  spec.summary       = "A Ruby interface to the Typeform Data API"
  spec.description   = "Implements the complete functionality of the Typeform Data API v0"
  spec.homepage      = "https://github.com/ClarkSource/typeform"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_development_dependency "bundler", "~> 1.15.2"
  spec.add_development_dependency "rake",    "~> 12.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_runtime_dependency     "hashie", ">= 3.0.0", "< 4.0.0"
  spec.add_runtime_dependency     "httparty"
  spec.add_runtime_dependency     "json"
end
