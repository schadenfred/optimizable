$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "optimizable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "optimizable"
  s.version     = Optimizable::VERSION
  s.authors     = ["schadenfred"]
  s.email       = ["fred.schoeneman@gmail.com"]
  s.homepage    = "https://github.com/schadenfred/optimizable"
  s.summary     = "Optimize your rails app for search."
  s.description = "Rails engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "pg"
end
