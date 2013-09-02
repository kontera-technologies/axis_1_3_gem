require 'java'

module Axis_1_3
	JAR_LIST = begin
		path = File.expand_path("../../", __FILE__)
		(Dir["#{path}/java_lib/\*.jar"] + Dir["#{path}/java_lib/axis-1_3/*.jar"])
	end
end

# load jars for lib folders
Axis_1_3::JAR_LIST.each { |jar| require jar and puts "loaded #{jar}" }
