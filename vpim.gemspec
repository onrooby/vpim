require 'vpim/version'

Gem::Specification.new do |s|
  s.author = "Sam Roberts",
  s.email = "vieuxtech@gmail.com",
  s.homepage = "http://vpim.rubyforge.org",
  s.rubyforge_project = "vpim",
  s.name              = "vpim"
  s.version           = Vpim::VERSION
  s.summary           = "iCalendar and vCard support for ruby"
  s.description       = <<'---'
This is a pure-ruby library for decoding and encoding vCard and iCalendar data
("personal information") called vPim.
---
  s.has_rdoc          = true
  s.extra_rdoc_files  = ["README", "CHANGES", "COPYING", "samples/README.mutt" ]

  candidates = FileList[
    'lib/vpim/**/*.rb',
    'lib/vpim.rb',
    'bin/*',
    'samples/*',
    'test/test_*.rb',
    'COPYING',
    'README',
    'CHANGES',
  ].to_a

  s.files             = Dir["{lib}/**/*.rb"] + ["COPYING", "README", "CHANGES"]
  s.test_files        = Dir.glob("test/test_*.rb")
  s.executables       = Dir['bin/*']

  s.require_path      = "lib"
end
