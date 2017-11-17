lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seo_validators/version'

Gem::Specification.new do |spec|
  spec.name          = 'seo_validators'
  spec.version       = SeoValidators::VERSION
  spec.authors       = ['Florent Ferry']
  spec.email         = ['contact@ouvrages-web.fr']

  spec.summary       = 'SEO Validators : Ensure your users embrace SEO best practices'
  spec.description   = 'Set of custom validators to ensure your users embrace SEO best practices in your administration dashboard forms.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_development_dependency 'rspec-rails', '~> 3.6'

  spec.add_dependency 'activemodel', '~> 5.0'
  spec.add_dependency 'activesupport', '~> 5.0'
end
