# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'protodiff/version'

Gem::Specification.new do |spec|
  spec.name          = "protodiff"
  spec.version       = Protodiff::VERSION
  spec.authors       = ["Kyle Maxwell"]
  spec.email         = ["kyle@kylemaxwell.com"]

  spec.summary       = %q{Diffs two protobuf files to ensure that they are mutually compatible}
  spec.description   = %q{Diffs two protobuf files to ensure that they are mutually compatible}
  spec.homepage      = "https://github.com/fizx/protodiff"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "protobuf-core", "~> 3.5"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
