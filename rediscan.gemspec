# encoding: utf-8

Gem::Specification.new do |s|
  s.name              = "rediscan"
  s.version           = "0.0.1"
  s.summary           = "Scanner for Redis keyspace"
  s.description       = "Scanner for Redis keyspace"
  s.authors           = ["Michel Martens"]
  s.email             = ["michel@soveran.com"]
  s.homepage          = "https://github.com/soveran/rediscan"
  s.files             = `git ls-files`.split("\n")
  s.license           = "MIT"

  s.add_dependency "redic"
end
