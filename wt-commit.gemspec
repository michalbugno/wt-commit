Gem::Specification.new do |gem|
  gem.name    = 'wt-commit'
  gem.version = '0.0.1'
  gem.date    = '2010-08-06'

  gem.summary = "whatthecommit.com commit message fetcher and git autocommiter"
  gem.description = "For when you hate your coworkers/collaborators"

  gem.authors  = ['Antek Piechnik']
  gem.email    = 'antek.piechnik@gmail.com'
  
  gem.files = Dir['{lib,spec}/**/*', 'README*', 'LICENSE*']

  gem.executables  = ['wt-commit']
  gem.require_path = 'lib'
end
