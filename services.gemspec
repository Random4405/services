
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "services/version"

Gem::Specification.new do |spec|
  spec.name          = "services"
  spec.version       = Services::VERSION
  spec.authors       = ["Nikita Pupko"]
  spec.email         = ["lazynick7@gmail.com"]

  spec.summary       = %q{A small service layer for your Rails app}
  spec.description   = %q{A small service layer for your Rails app}
  spec.homepage      = "https://github.com/Random4405/services"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "rails", ">= 4.2"
end
