# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-html-beautify/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-html-beautify"
  spec.version       = Middleman::HtmlBeautify::VERSION
  spec.authors       = ["inotom"]
  spec.email         = ["wdf7322@yahoo.co.jp"]

  spec.summary       = %q{Beautify HTML string}
  spec.description   = %q{Beautify HTML string}
  spec.homepage      = "https://github.com/inotom/middleman-html-beautify"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'middleman-core', '>= 4.3'
  spec.add_runtime_dependency 'htmlbeautifier', '>= 1.3'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'cucumber', '~> 1.3'
  spec.add_development_dependency 'capybara', '~> 3.30'
  spec.add_development_dependency 'aruba', '~> 0.5'
end
