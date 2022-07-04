
require "rake"

Gem::Specification.new do |s|
  s.name        = 'yt-download'
  s.version     = '1.0.4'
  s.summary     = "youtube shorts downloader with ruby"
  s.description = "ruby script for download youtube shorts media!"
  s.authors     = ["Ajay-o-s"]
  s.email       = 'akhubsmaster@gmail.com'
  s.files       = FileList["lib/*"]
  s.executables << "yt-download"
  s.homepage    =
    'https://rubygems.pkg.github.com/yt-download'
  s.license       = 'Apache-2.0'
  s.metadata    = { "source_code_uri" => "https://github.com/Ajay-o-s/yt-download.rb" }
end
