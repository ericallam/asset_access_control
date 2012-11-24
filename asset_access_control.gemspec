
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "asset_access_control/version"

Gem::Specification.new do |s|
  s.name        = "asset_access_control"
  s.version     = AssetAccessControl::VERSION
  s.authors     = ["Eric Allam"]
  s.email       = ["rubymaverick@gmail.com"]
  s.homepage    = "https://github.com/rubymaverick/asset_access_control"
  s.summary     = %q{Set Access Control headers on asset requests in Rails 3.1}
  s.description = %q{Set Access Control headers on asset requests in Rails 3.1}

  s.rubyforge_project = "asset_access_control"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rack"
  s.add_development_dependency "rspec", "~>2.0"
end
