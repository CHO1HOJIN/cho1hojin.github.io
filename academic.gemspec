# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "academic-jekyll-theme"
  spec.version       = "1.0.0"
  spec.authors       = ["Hojin Choi"]
  spec.email         = ["kaler1234@u.sogang.ac.kr"]

  spec.summary       = "Personal Website"
  spec.homepage      = "https://cho1hojin.github.io/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|CHANGELOG)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
