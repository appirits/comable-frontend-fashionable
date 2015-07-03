version = File.read(File.expand_path('../COMABLE_VERSION', __FILE__)).strip

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'comable-frontend-fashionable'
  s.version     = version
  s.authors     = ['sudamitsuhiro']
  s.email       = ['suda@appirits.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO'
  s.description = 'TODO'

  s.files = Dir['{app,config,lib}/**/*', 'Rakefile', 'README.rdoc']

  s.add_dependency 'comable-frontend', version

  s.add_dependency 'rails', '~> 4.1.0'
  s.add_dependency 'sass-rails', '~> 5.0.1'
  s.add_dependency 'coffee-rails', '~> 4.0.0'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'selectable_attr_rails'
end
