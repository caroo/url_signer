# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "url_signer/version"

Gem::Specification.new do |s|
  s.name        = "url_signer"
  s.version     = UrlSigner::VERSION
  s.authors     = ["pkw.de development team"]
  s.email       = ["dev@pkw.de"]
  s.homepage    = ""
  s.summary     = %q{UrlSigner is a class to cryptographically sign URLs.}
  s.description = %q{The UrlSigner class was designed to create tamper-proof URLs, that can only be generated and validated by parties that know the shared secret.}
  # s.add_dependency "activesupport"
  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit", ">= 2.0.9"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
