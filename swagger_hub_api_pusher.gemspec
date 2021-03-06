# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger_hub_api_pusher/version'

Gem::Specification.new do |spec|
  spec.name          = "swagger_hub_api_pusher"
  spec.version       = SwaggerHubApiPusher::VERSION
  spec.authors       = ["Markov Alexey"]
  spec.email         = ["piton4eg@mail.ru"]

  spec.summary       = "Push swagger.json to SwaggerHub API"
  spec.description   = "Rake task for pushing swagger.json to SwaggerHub API"
  spec.homepage      = "https://github.com/trickstersio/swagger_hub_api_pusher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_development_dependency "webmock", "~> 3.0.1"
end
