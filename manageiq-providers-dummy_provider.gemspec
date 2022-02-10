$:.push File.expand_path("../lib", __FILE__)

require "manageiq/providers/dummy_provider/version"

Gem::Specification.new do |s|
  s.name        = "manageiq-providers-dummy_provider"
  s.version     = ManageIQ::Providers::DummyProvider::VERSION
  s.authors     = ["ManageIQ Developers"]
  s.homepage    = "https://github.com/ManageIQ/manageiq-providers-dummy_provider"
  s.summary     = "DummyProvider Provider for ManageIQ"
  s.description = "DummyProvider Provider for ManageIQ"
  s.licenses    = ["Apache-2.0"]

  s.files = Dir["{app,config,lib}/**/*"]

  s.add_development_dependency "manageiq-style"
  s.add_development_dependency "simplecov", ">= 0.21.2"
end
