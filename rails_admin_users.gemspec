$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_admin_users/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = "rails_admin_users"
  spec.version = RailsAdminUsers::VERSION
  spec.authors = ["afeiship"]
  spec.email = ["1290657123@qq.com"]
  spec.homepage = "https://github.com/afeiship/rails_admin_users"
  spec.summary = "Summary of RailsAdminUsers."
  spec.description = "Description of RailsAdminUsers."
  spec.license = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency "bcrypt", "~> 3.1.7"
  spec.add_dependency "kaminari"
  spec.add_development_dependency "sqlite3"
end
