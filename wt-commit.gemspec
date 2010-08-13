Gem::Specification.new do |gem|
  gem.name    = 'wt-commit'
  gem.version = '0.0.2'
  gem.date    = Date.today.to_s

  gem.summary = "whatthecommit.com commit message fetcher and git autocommiter"
  gem.description = "whatthecommit.com commit message fetcher and git autocommiter. For when you hate your coworkers/collaborators."

  gem.authors  = ['Antek Piechnik']
  gem.email    = 'antek.piechnik@gmail.com'
  gem.homepage = 'http://github.com/antekpiechnik/wt-commit'
  
  gem.add_runtime_dependency 'httparty'
  gem.add_runtime_dependency 'hpricot'

  gem.add_development_dependency('rspec', [">= 1.2.7"])
    
  gem.files = Dir['{bin,lib,spec}/**/*', 'README*', 'LICENSE*']

  gem.executables  = ['wt-commit']
  gem.require_path = 'lib'
end
