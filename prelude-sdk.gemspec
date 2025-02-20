# frozen_string_literal: true

require_relative "lib/prelude-sdk/version"

Gem::Specification.new do |s|
  s.name = "prelude-sdk"
  s.version = PreludeSDK::VERSION
  s.summary = "Ruby library to access the Prelude API"
  s.authors = ["Prelude"]
  s.email = "hello@prelude.so"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/prelude-sdk/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/prelude-so/ruby-sdk"
  s.metadata["rubygems_mfa_required"] = "false"
end
