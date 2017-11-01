Gem::Specification.new do |s|
  s.name        = 'overcommit_config'
  s.version     = '0.1.5'
  s.date        = '2017-11-01'
  s.summary     = "Overcommit config generator for integrating PreCommit with RuboCop"
  s.description = "A simple gem to generate default config for Overcommit"
  s.authors     = ["Thai Huynh"]
  s.email       = 'qthai.huynh@gmail.com'
  s.files       = ["lib/overcommit_config.rb", "lib/.overcommit_popular_config.yml", "lib/custom-rubocop-script", "README.md"]
  s.executables << 'overcommit_config'
  s.homepage    =
    'http://rubygems.org/gems/overcommit_config'
  s.license       = 'MIT'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rubocop", "~> 0.49"
  s.add_development_dependency "overcommit", "~> 0.41"
end