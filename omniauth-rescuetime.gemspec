Gem::Specification.new do |gem|
  gem.name    = 'omniauth-rescuetime'
  gem.version = 1.0
  gem.date    = "2016-04-28" 
  gem.license = 'MIT'
  gem.summary = "OmniAuth strategy for RescueTime"
  gem.description = "OmniAuth strategy for RescueTime"

  gem.authors  = ['Andy Brett']
  gem.email    = 'andy@andybrett.com'
  gem.homepage = 'https://github.com/beeminder/omniauth-rescuetime'

  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1'

  gem.files = ['lib/omniauth-rescuetime.rb', 'lib/omniauth/strategies/rescuetime.rb']
  gem.require_paths = ['lib']
end
