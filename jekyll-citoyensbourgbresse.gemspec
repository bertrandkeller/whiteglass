# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-citoyensbourgbresse"
  spec.version       = "1.13"
  spec.authors       = ["Bertrand Keller"] # From the work of Chayoung You
  spec.email         = ["bertrand.keller@gmail.com"]

  spec.summary       = %q{Minimal, responsive Jekyll theme for hackers.}
  spec.homepage      = "https://github.com/bertrandkeller/whiteglass"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "https://github.com/bertrandkeller/whiteglass/issues"
  spec.metadata["changelog_uri"] = "https://github.com/bertrandkeller/whiteglass/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").select do |f|
      f.match(%r{^(assets|_layouts|_includes|_sass|_data\/i18n\.yml|LICENSE|README|CHANGELOG)}i)
    end
  end

  spec.add_runtime_dependency "jekyll", ">= 3.3"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.1"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.0"
  spec.add_runtime_dependency "jekyll-optional-front-matter", "~> 0.3.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
