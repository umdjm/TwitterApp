# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tweetstream"
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Steve Agalloco"]
  s.date = "2012-10-07"
  s.description = "TweetStream allows you to easily consume the Twitter Streaming API utilizing the YAJL Ruby gem."
  s.email = ["michael@intridea.com", "steve.agalloco@gmail.com"]
  s.homepage = "http://github.com/intridea/tweetstream"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.16"
  s.summary = "TweetStream is a simple wrapper for consuming the Twitter Streaming API."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<em-twitter>, ["~> 0.2"])
      s.add_runtime_dependency(%q<twitter>, ["~> 4.0"])
      s.add_runtime_dependency(%q<daemons>, ["~> 1.1"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_runtime_dependency(%q<em-http-request>, ["~> 1.0.2"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdiscount>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 1.8.8"])
      s.add_development_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<em-twitter>, ["~> 0.2"])
      s.add_dependency(%q<twitter>, ["~> 4.0"])
      s.add_dependency(%q<daemons>, ["~> 1.1"])
      s.add_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_dependency(%q<em-http-request>, ["~> 1.0.2"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdiscount>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 1.8.8"])
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<em-twitter>, ["~> 0.2"])
    s.add_dependency(%q<twitter>, ["~> 4.0"])
    s.add_dependency(%q<daemons>, ["~> 1.1"])
    s.add_dependency(%q<multi_json>, ["~> 1.3"])
    s.add_dependency(%q<em-http-request>, ["~> 1.0.2"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdiscount>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 1.8.8"])
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
