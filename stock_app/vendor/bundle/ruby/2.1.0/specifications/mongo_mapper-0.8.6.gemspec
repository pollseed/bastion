# -*- encoding: utf-8 -*-
# stub: mongo_mapper 0.8.6 ruby lib

Gem::Specification.new do |s|
  s.name = "mongo_mapper"
  s.version = "0.8.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Nunemaker"]
  s.date = "2010-10-11"
  s.email = ["nunemaker@gmail.com"]
  s.executables = ["mmconsole"]
  s.files = ["bin/mmconsole"]
  s.homepage = "http://github.com/jnunemaker/mongomapper"
  s.rubygems_version = "2.3.0"
  s.summary = "A Ruby Object Mapper for Mongo"

  s.installed_by_version = "2.3.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_runtime_dependency(%q<jnunemaker-validatable>, ["~> 1.8.4"])
      s.add_runtime_dependency(%q<plucky>, ["~> 0.3.6"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<log_buddy>, [">= 0"])
      s.add_development_dependency(%q<jnunemaker-matchy>, ["~> 0.4.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11"])
      s.add_development_dependency(%q<timecop>, ["~> 0.3.1"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.8"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_dependency(%q<jnunemaker-validatable>, ["~> 1.8.4"])
      s.add_dependency(%q<plucky>, ["~> 0.3.6"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<log_buddy>, [">= 0"])
      s.add_dependency(%q<jnunemaker-matchy>, ["~> 0.4.0"])
      s.add_dependency(%q<shoulda>, ["~> 2.11"])
      s.add_dependency(%q<timecop>, ["~> 0.3.1"])
      s.add_dependency(%q<mocha>, ["~> 0.9.8"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.4"])
    s.add_dependency(%q<jnunemaker-validatable>, ["~> 1.8.4"])
    s.add_dependency(%q<plucky>, ["~> 0.3.6"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<log_buddy>, [">= 0"])
    s.add_dependency(%q<jnunemaker-matchy>, ["~> 0.4.0"])
    s.add_dependency(%q<shoulda>, ["~> 2.11"])
    s.add_dependency(%q<timecop>, ["~> 0.3.1"])
    s.add_dependency(%q<mocha>, ["~> 0.9.8"])
  end
end
