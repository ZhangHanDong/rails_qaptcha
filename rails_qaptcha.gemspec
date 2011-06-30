# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_qaptcha/version"
require "rails_qaptcha/engine"
require 'rake'

Gem::Specification.new do |s|
  s.name        = "rails_qaptcha"
  s.version     = RailsQaptcha::VERSION
  s.authors     = ["AlexZhang"]
  s.email       = ["blackanger.z@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A jQery slide captcha system with jQuery & jQuery UI for Rails 3}
  s.description = %q{jQuery slide captcha system with jQuery & jQuery UI for Rails 3}
  s.files       =  FileList["[A-Z]*", "{app,config,lib}/**/*"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = FileList["[A-Z]*"] - %w(Gemfile Rakefile)
  s.rubyforge_project = "rails_qaptcha"

  s.require_paths = ["lib"]
  s.add_dependency "rails"
  
  s.add_development_dependency 'rspec', ['>= 0']
  s.add_development_dependency 'rspec-rails', ['>= 0']
end
