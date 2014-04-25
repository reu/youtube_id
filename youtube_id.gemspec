# -*- encoding: utf-8 -*-
require File.expand_path('../lib/youtube_id/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rodrigo Navarro", "Paulo Silva", "Cassiano D'Andrea"]
  gem.email         = ["rnavarro1@gmail.com", "puloms@hotmail.com", "cassiano.dandrea@tagview.com.br"]
  gem.description   = %q{Easily extract the video id from youtube videos urls}
  gem.summary       = %q{Easily extract the video id from youtube videos urls}
  gem.homepage      = "https://github.com/reu/youtube_id"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.name          = "youtube_id"
  gem.require_paths = ["lib"]
  gem.version       = YoutubeID::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
end
