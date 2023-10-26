# frozen_string_literal: true

require_relative "lib/numerify/version"

Gem::Specification.new do |spec|
  spec.name = "numerify"
  spec.version = Numerify::VERSION
  spec.authors = ["Wuletaw Wonte"]
  spec.email = ["wuletawwonte@gmail.com"]

  spec.summary = "A ruby gem that converts numbers from arabic to and from geez, chinese, greek, and many more."
  spec.description = "An extraordinary Ruby gem designed to effortlessly convert numbers between Arabic and various world languages, including Geez, Chinese, Greek, and many more."
  spec.homepage = "https://github.com/wuletawwonte/numerify.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wuletawwonte/numerify.git"
  spec.metadata["changelog_uri"] = "https://github.com/wuletawwonte/numerify/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
