
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_suite/version"

Gem::Specification.new do |spec|
  spec.name          = "test_suite"
  spec.version       = TestSuite::VERSION
  spec.authors       = ["SangVinya"]
  spec.email         = ["vano1861@gmail.com"]

  spec.summary       = %q{Test suite with methods for testing}
  spec.description   = %q{Gem helps to do next things with your objects - check the type, make a conversions and work with hashes}
  spec.homepage      = "https://github.com/SangVinya/gem_test_suite"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
