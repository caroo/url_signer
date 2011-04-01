%w[hoe rubygems rake rake/clean fileutils newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/url_signer'

Hoe.plugin :newgem
Hoe.plugins.delete :rubyforge
Hoe.plugins.delete :test
$hoe = Hoe.spec('url_signer') do |p|
  p.developer('Caroo GmbH', 'dev@pkw.de')
  p.changes              = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  p.extra_deps = [
    ['activesupport', '~>2.3.10']
  ]
  p.extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"]
  ]
  p.summary = "UrlSigner is a class to cryptographically sign URLs."
  p.clean_globs |= %w[**/.DS_Store tmp *.log]
end

require 'newgem/tasks'

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.warning = true
end

desc 'Generate RDoc'
Rake::RDocTask.new do |task|
  task.main = 'README.rdoc'
  task.title = "UrlSigner #{UrlSigner::VERSION}"
  task.rdoc_dir = 'doc'
  task.rdoc_files.include('README.rdoc', 'COPYING', 'MIT-LICENSE',"lib/**/*.rb")
end
