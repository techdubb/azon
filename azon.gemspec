Gem::Specification.new do |s|
  s.name               = "azon"
  s.version            = "0.0.1"

  s.authors = ["M. Hokanson"]
  s.date = %q{2014-11-16}
  s.description = %q{Cache invalidation, we hope.}
  s.email = %q{m@h0ke.com}
  s.files = ["Rakefile", "lib/azon.rb"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Dirty!}

  s.add_dependency "redis"
end
