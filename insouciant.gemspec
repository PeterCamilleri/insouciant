lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "insouciant/version"

Gem::Specification.new do |spec|
  spec.name          = "insouciant"
  spec.version       = Insouciant::VERSION
  spec.authors       = ["PeterCamilleri"]
  spec.email         = ["peter.c.camilleri@gmail.com"]

  spec.summary       = Insouciant::DESCRIPTION
  spec.description   = %q{insouciant: Run code and not worry about exceptions or errors.}
  spec.homepage      = "https://github.com/PeterCamilleri/insouciant"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
                          f.match(%r{^(test|docs)/})
                        end
  spec.executables   = spec
                         .files
                         .grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'minitest_visible', "~> 0.1"
end
