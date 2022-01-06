# frozen_string_literal: false

Gem::Specification.new do |s|
  #s.name = 'qi_slick-api-client'
  #s.required_ruby_version = '>= 2.5.0'
  #s.version          = QiSlick::Api::Client::VERSION
  s.authors          = ['Santanu Bhattacharya']
  s.email            = ['santanu.bhattacharya@quantuminventions.com', 'santattecg@gmail.com']
  s.date             = '2021-03-05'
  s.summary          = ''
  s.description      = ''
  #s.files            = `git ls-files`.split("\n")
  s.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  s.files += Dir['[A-Z]*']
  s.files.reject! { |fn| fn.include? "CVS" }
  s.require_paths    = ['lib', 'spec']
  s.homepage         = ''
  s.license          = 'Nonstandard'
  s.executables      = ['jarch_test.rb'] #s.files.grep(%r{^bin/jarch.rb}) { |f| File.basename(f) }
  
  s.add_development_dependency 'warbler'
end
