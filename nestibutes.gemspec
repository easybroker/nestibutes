$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nestibutes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nestibutes"
  s.version     = Nestibutes::VERSION
  s.authors     = ["Eric Northam", "Rodolfo Valdés"]
  s.email       = ["eric@easybroker.com", "rodolfo@easybroker.com"]
  s.homepage    = "https://www.easybroker.com"
  s.summary     = "Rails gem that makes it easy to work with nested attributes"
  s.description = "Rails gem that makes it easy to work with nested attributes"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '~> 5.0.3'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency 'sqlite3'
end
