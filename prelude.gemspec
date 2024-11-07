# frozen_string_literal: true

require_relative "lib/prelude/version"

Gem::Specification.new do |s|
  s.name = "prelude"
  s.version = Prelude::VERSION
  s.summary = "Ruby library to access the Prelude API"
  s.authors = ["Prelude"]
  s.email = "dev-feedback@prelude.so"
  s.files = Dir["lib/**/*.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://rubydoc.info/github/stainless-sdks/prelude-ruby"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/prelude-ruby"
  s.metadata["rubygems_mfa_required"] = "true"
end
