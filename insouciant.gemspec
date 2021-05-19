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
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.1.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
