$:.push File.expand_path("../lib", __FILE__)
require "myth/rails/version"

Gem::Specification.new do |s|
  s.name        = "myth-rails"
  s.version     = Myth::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dan Schultzer"]
  s.email       = ["dan@dreamconception.com"]
  s.homepage    = "https://github.com/danschultzer/myth-rails"
  s.summary     = %q{Myth adapter for the Rails asset pipeline.}
  s.description = %q{Myth adapter for the Rails asset pipeline.}

  s.add_runtime_dependency 'myth',          '>= 1.0.0'
  s.add_runtime_dependency 'railties',      '>= 4.0.0', '< 5.0'

  s.files         = Dir.glob("{bin,lib}/**/*") + %w(MIT-LICENSE README.md)
  s.test_files    = Dir.glob("{test}/**/*")
  s.executables   = Dir.glob("{bin}/*")
  s.require_paths = ["lib"]
  s.license = "MIT"
end
