GEM::Specification.new do |s|
  s.name        = 'tag_bat'
  s.version     = '0.0.1'
  s.authors     = ['Nasser Al Zahrani']
  s.email       = ['nassersala@gmail.com']
  s.homepage    =  'https://github.com/nassersala/tag_bat'
  s.summary     =  'The Tag Bat'
  s.description =  'yet another tagging library for Rails'
  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ['lib']
end
