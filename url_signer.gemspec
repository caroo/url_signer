# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{url_signer}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Caroo GmbH"]
  s.date = %q{2011-04-01}
  s.description = %q{The UrlSigner class was designed to create tamper-proof URLs, that can only be generated and validated by parties that know the shared secret.}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["COPYING", "History.txt", "MIT-LICENSE", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/url_signer.rb", "test/test_helper.rb", "test/url_signer_test.rb", "url_signer.gemspec"]
  s.homepage = %q{http://github.com/pkwde/url_signer}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{url_signer}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{UrlSigner is a class to cryptographically sign URLs.}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_development_dependency(%q<newgem>, [">= 1.5.3"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.2"])
    else
      s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_dependency(%q<newgem>, [">= 1.5.3"])
      s.add_dependency(%q<hoe>, [">= 2.9.2"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
    s.add_dependency(%q<newgem>, [">= 1.5.3"])
    s.add_dependency(%q<hoe>, [">= 2.9.2"])
  end
end
