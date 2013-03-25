$:.push File.expand_path('../lib', __FILE__)

require 'link_preview/version'

Gem::Specification.new do |s|
  s.name        = 'link_preview'
  s.version     = LinkPreview::VERSION
  s.authors     = ['Michael Andrews']
  s.email       = ['michael@socialcast.com']
  s.homepage    = 'https://github.com/socialcast/uri_abstract'
  s.summary     = 'Generate a link_preview for any URL'
  s.description = 'Generate a link_preview for any URL'

  s.files = Dir['lib/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency('ruby-oembed', '~> 0.8')
  s.add_dependency('addressable', '~> 2.3')
  s.add_dependency('faraday', '~> 0.8')
  s.add_dependency('faraday_middleware', '~> 0.8')
  s.add_dependency('nokogiri')
  s.add_dependency('multi_json')

  s.add_dependency('activesupport')

  # Development
  s.add_development_dependency('rake', '~> 0.9')

  # Testing
  s.add_development_dependency('rspec', '~> 2.12')
  s.add_development_dependency('vcr', '~> 2.4')
  s.add_development_dependency('webmock')
  s.add_development_dependency('debugger')
end
