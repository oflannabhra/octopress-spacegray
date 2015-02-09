# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-spacegray/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-spacegray"
  spec.version       = Octopress::Spacegray::VERSION
  spec.authors       = [""]
  spec.email         = [""]
  spec.description   = %q{}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/octopress/spacegray"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").grep(/^(bin\/|lib\/|assets\/|changelog|readme|license)/i)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "octopress-ink", "~> 1.0.0.rc"

  spec.add_development_dependency "clash"
  spec.add_development_dependency "autoprefixer-rails"
  spec.add_development_dependency "octopress", "~> 3.0.0.rc"
  spec.add_development_dependency "octopress-code-highlighter"
  spec.add_development_dependency "octopress-codefence"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  if RUBY_VERSION >= "2"
    spec.add_development_dependency "pry-byebug"
  end
end
