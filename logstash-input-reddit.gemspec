Gem::Specification.new do |s|
  s.name          = 'logstash-input-reddit'
  s.version       = '0.1.0'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'Logstash plugin to read from a Reddit subreddit'
  s.authors       = ['Nicolas Frankel']
  s.email         = 'nicolas@frankel.ch'
  s.homepage      = 'https://blog.frankel.ch/starting-logstash-plugin-development-for-java-developers'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '~> 2'
  s.add_runtime_dependency 'logstash-codec-plain', '~> 3'
  s.add_runtime_dependency 'stud', '~> 0.0', '>= 0.0.22'
  s.add_development_dependency 'logstash-devutils', '~> 0.0', '>= 0.0.16'
end
