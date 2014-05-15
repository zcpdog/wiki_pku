$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wiki_pku/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wiki_pku"
  s.version     = WikiPku::VERSION
  s.authors     = ["Chuanpin Zhu"]
  s.email       = ["zcppku@gmail.com"]
  s.homepage    = "https://github.com/zcpdog"
  s.summary     = "Wiki for PKU"
  s.description = "Wiki for PKU"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.0.5'
  s.add_dependency 'rails_admin', '~> 0.6.2'
  s.add_dependency 'rails_admin_state', '~> 1.3.3'
  s.add_dependency 'baidu_ueditor_rails', '~> 0.1.0'
  s.add_dependency 'state_machine', '~> 1.2.0'
  s.add_dependency 'devise', '~> 3.2.4'
  s.add_dependency 'rails_admin_nestable', '~> 0.1.7'
  s.add_dependency 'ancestry', '~> 2.1.0'
  s.add_dependency 'cancan', '~> 1.6.10'
  s.add_dependency "sass-rails", "~> 4.0.3"

  s.add_development_dependency "sqlite3"
end
