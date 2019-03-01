
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "countrylist/version"

Gem::Specification.new do |spec|
  spec.name          = "countrylist"
  spec.version       = Countrylist::VERSION
  spec.authors       = ["Mohamad Alhaj Rahmoun"]
  spec.email         = ["mohamad@bookdoc.com"]

  spec.summary       = %q{A list for countries supported by BookDoc.}
  spec.description   = %q{This list contains (name, currency, flag, dialing_code, states and cities)}
  spec.homepage      = "https://github.com/bookdocmanagement/bookdoc-mailer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '~> 5.0', '> 5.0.0'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
