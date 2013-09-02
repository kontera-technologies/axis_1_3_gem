$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "axis_1_3"
  s.version     = Axis_1_3::VERSION
  s.authors     = ["roee sroussi"]
  s.email       = ["roee@kontera.com"]
  s.homepage    = "https://github.com/kontera-technologies/axis_1_3"
  s.summary     = "Wraps the importing of java axis library, version 1.3 to jruby."
  s.description = "Axis is a very good library for SOAP. It does require quite few jars, so this gem will wrap them all for you. This will only work within jruby, since it is being done by importing jar files."

  s.files = Dir["java_lib/**/*"] + Dir["java_lib/*"] + Dir["lib/*"] + ["README.md"]
end
