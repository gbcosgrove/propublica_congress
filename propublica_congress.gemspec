# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "propublica_congress/version"

Gem::Specification.new do |spec|
  spec.name          = "propublica_congress"
  spec.version       = PropublicaCongress::VERSION
  spec.authors       = ["Greg Cosgrove"]
  spec.email         = ["gregcosgrove@gmail.com"]

  spec.summary       = %q{Ruby wrapper for ProPublica Congress API.}
  spec.description   = %q{Ruby wrapper for ProPublica Congress API.}
  spec.homepage      = "https://github.com/gbcosgrove/propublica_congress"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"

  spec.add_dependency 'hashie'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'json'
end
