$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'view_model/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'view_model-rails'
  spec.version       = ViewModel::Rails::VERSION
  spec.authors       = ['Andreas Busold']
  spec.email         = ['ab@neopoly.de']

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  end

  spec.summary       = %q{Rails engine providing view models}
  spec.homepage      = ''
  spec.license       = ''

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'view_model'
  spec.add_dependency 'rails'

  spec.add_development_dependency 'bundler', '>= 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'simplecov'
end
