# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-smarthome"
  s.version     = "0.0.1" 
  s.authors     = ["Backslash"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Ein RWE Smarthome Siri Proxy Plugin}
  s.description = %q{Mit diesem Plugin ist es möglich das Smarthome von RWE zu steuern }

  s.rubyforge_project = "siriproxy-smarthome"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
    s.add_runtime_dependency "httparty"
end
