# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "em-twitter"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve Agalloco"]
  s.date = "2012-10-09"
  s.description = "Twitter Streaming API client for EventMachine"
  s.email = "steve.agalloco@gmail.com"
  s.homepage = "https://github.com/spagalloco/em-twitter"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.16"
  s.summary = "Twitter Streaming API client for EventMachine"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.5"])
      s.add_runtime_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdiscount>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.11"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<mockingbird>, [">= 0.2"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_dependency(%q<http_parser.rb>, ["~> 0.5"])
      s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdiscount>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.11"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<mockingbird>, [">= 0.2"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, ["~> 1.0"])
    s.add_dependency(%q<http_parser.rb>, ["~> 0.5"])
    s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdiscount>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.11"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<mockingbird>, [">= 0.2"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
