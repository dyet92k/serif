Gem::Specification.new do |s|
  s.name         = "serif"
  s.version      = "0.1.1"
  s.authors      = ["Adam Prescott"]
  s.email        = ["adam@aprescott.com"]
  s.homepage     = "https://github.com/aprescott/serif"
  s.summary      = "Simple file-based blogging system."
  s.description  = "Serif is a simple file-based blogging system which generates static content and allows dynamic editing through an interface."
  s.files        = Dir["{lib/**/*,statics/**/*,bin/*}"] + %w[serif.gemspec LICENSE Gemfile Gemfile.lock README.md]
  s.require_path = "lib"
  s.bindir       = "bin"
  s.executables  = "serif"
  #s.test_files   = Dir["test/*"]

  [
    "rake", "~> 0.9",
    "rack", "~> 1.0",
    "yui-compressor", ">= 0",
    "redcarpet", "~> 2.2",
    "pygments.rb", "~> 0.3",
    "sinatra", "~> 1.3",
    "redhead", "~> 0.0.6",
    "liquid", "~> 2.4",
    "slop", "~> 3.3"
  ].each_slice(2) do |name, version|
    s.add_runtime_dependency(name, version)
  end
end
