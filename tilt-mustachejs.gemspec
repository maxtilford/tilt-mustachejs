# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "tilt-mustachejs"
  s.version     = "0.0.1"
  s.authors     = ["Max Tilford"]
  s.email       = ["maxtilford@gmail.com"]
  s.homepage    = "https://github.com/maxtilford/tilt-mustachejs"
  s.summary     = %q{ Adds mustache client-side template support }
  s.description = %q{ Adds mustache client-side template support. 

If a rails app is present, it will register itself with the asset pipeline.
}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "tilt"
end
