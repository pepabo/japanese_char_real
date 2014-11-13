# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'japanese_char_real/version'

Gem::Specification.new do |spec|
  spec.name          = "japanese_char_real"
  spec.version       = JapaneseCharReal::VERSION
  spec.authors       = ["linyows"]
  spec.email         = ["linyows@gmail.com"]
  spec.summary       = %q{This is to eliminate thenly some garbledccur by using the ujis database with UTF-8 applications}
  spec.description   = %q{This is to eliminate thenly some garbledccur by using the ujis database with UTF-8 applications}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
