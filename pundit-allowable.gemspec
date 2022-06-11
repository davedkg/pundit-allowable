# frozen_string_literal: true

require_relative "lib/pundit/allowable/version"

Gem::Specification.new do |spec|
  spec.name = "pundit-allowable"
  spec.version = Pundit::Allowable::VERSION
  spec.authors = ["davedkg"]
  spec.email = ["davedkg@gmail.com"]

  spec.summary = "Filter strong parameter values inside your pundit policies."
  spec.description = <<-DESCRIPTION
    Strong parameters allow you to filter param keys but not values. Allowable
    allows you to filter param values. Pundit::Allowable gives you the power to
    filter param values inside your pundit policies.
  DESCRIPTION
  spec.homepage = "https://github.com/davedkg/pundit-allowable"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "allowable", ">= 1"
  spec.add_dependency "pundit", ">= 2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
