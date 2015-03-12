Gem::Specification.new do |spec|
  spec.name                   = "slugifier"
  spec.version                = "1.1.1"
  spec.date                   = "2015-03-12"
  spec.summary                = "Returns a slug given a string."
  spec.description            = "Returns a slug given a string."
  spec.authors                = ["Pedro Gimenez"]
  spec.email                  = ["me@pedro.bz"]
  spec.files                  = Dir["lib/**/*.rb"] + Dir["spec/**/*.rb"]
  spec.homepage               = "http://github.com/pedrogimenez/slugifier"
  spec.extra_rdoc_files       = ["README.md"]
  spec.required_ruby_version  = ">= 2.1.0"
  spec.licenses               = ["MIT"]

  spec.add_development_dependency "rspec", "~> 3.0"
end
