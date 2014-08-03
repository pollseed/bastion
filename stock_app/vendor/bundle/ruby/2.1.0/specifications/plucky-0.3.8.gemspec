# -*- encoding: utf-8 -*-
# stub: plucky 0.3.8 ruby lib

Gem::Specification.new do |s|
  s.name = "plucky"
  s.version = "0.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Nunemaker"]
  s.date = "2011-04-15"
  s.email = ["nunemaker@gmail.com"]
  s.homepage = "http://github.com/jnunemaker/plucky"
  s.rubygems_version = "2.3.0"
  s.summary = "Thin layer over the ruby driver that allows you to quickly grab hold of your data (pluck it!)."

  s.installed_by_version = "2.3.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo>, ["~> 1.3"])
    else
      s.add_dependency(%q<mongo>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<mongo>, ["~> 1.3"])
  end
end
