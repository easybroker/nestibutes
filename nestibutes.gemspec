$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nestibutes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nestibutes"
  s.version     = Nestibutes::VERSION
  s.authors     = ["Eric Northam"]
  s.email       = ["eric@easybroker.com"]
  s.homepage    = "https://github.com/easybroker"
  s.summary     = "Makes it easy to work with nested atributes"
  s.description = "Create, edit and delete nested attributes locally using JavaScript."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "jquery-rails"

end
