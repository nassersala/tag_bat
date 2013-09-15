Gem::Specification.new do |s|
  s.name        = 'tag_bat'
  s.version     = '0.1.0'
  s.authors     = ['Nasser Al Zahrani']
  s.email       = ['nassersala@gmail.com']
  s.homepage    =  'https://github.com/nassersala/tag_bat'
  s.summary     =  'The Tag Bat'
  s.description =  'yet another tagging library for Rails (not stable at all!)'
  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ['lib']
  s.add_runtime_dependency     'activerecord', '>= 3.2.0'
  s.add_development_dependency 'combustion',   '~> 0.4.0'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sqlite3',      '~> 1.3.7'
end
