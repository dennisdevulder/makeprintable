lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'makeprintable/version'

Gem::Specification.new do |spec|
  spec.name          = "makeprintable"
  spec.version       = MakePrintable::VERSION
  spec.authors       = ["Dennis de Vulder"]
  spec.email         = ["dennisdevulder@gmail.com"]
  spec.description   = %q{Ruby wrapper providing a connection to the makeprintable API the rails way}
  spec.summary       = %q{Ruby wrapper for detecting flaws in 3D designs and repairing them for 3D printing. Using the makeprintable API.}
  spec.homepage      = "http://rubygems.org/gems/makeprintable"
  spec.license       = "MIT"

  spec.files = Dir["README.md","Gemfile","Rakefile", "spec/*", "lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", '= 10.4.2'
  spec.add_dependency "rspec", '= 3.2.0'
  spec.add_dependency 'rest-client', '=1.8.0'
  spec.add_dependency 'crack', '= 0.4.2'
end
