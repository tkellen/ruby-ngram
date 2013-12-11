require File.expand_path('../lib/ngram', __FILE__)

Gem::Specification.new do |spec|
  spec.name = 'ngram'
  spec.version = NGram::VERSION
  spec.description = %q{Break words and phrases into ngrams.}
  spec.summary = spec.description
  spec.author = 'Tyler Kellen'
  spec.email = 'tyler@sleekcode.net'
  spec.homepage = 'https://github.com/tkellen/ruby-ngram'
  spec.licenses = ['MIT']
  spec.files = ["lib/ngram.rb"]
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rspec'
end