version = File.read(File.expand_path('../COMABLE_VERSION', __FILE__)).strip

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'comable-frontend-fashionable'
  s.version     = version
  s.authors     = ['sudamitsuhiro']
  s.email       = ['suda@appirits.com']
  s.homepage    = 'http://github.com/appirits/comable-frontend-fashionable'
  s.summary     = 'Provides fashionable frontend to the comable application'
  s.description = 'Provides fashionable frontend to the comable application'

  s.files = Dir['{app,config,lib}/**/*', 'Rakefile', 'README.rdoc']

  s.add_dependency 'comable-frontend', "~> #{version.split('.')[0..1].join('.')}.0"

  s.add_dependency 'rails', '>= 3.2.0', '< 5'
  s.add_dependency 'sass-rails', '>= 5.0.0', '< 6'
  s.add_dependency 'coffee-rails', '>= 4.0.0', '< 5'
  s.add_dependency 'jquery-rails'
end
