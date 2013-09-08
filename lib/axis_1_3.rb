require 'java'

module Axis_1_3
	JAR_LIST = begin
		path = File.expand_path("../../", __FILE__)
		(Dir["#{path}/java_lib/\*.jar"] + Dir["#{path}/java_lib/axis-1_3/*.jar"])
	end

	def Axis_1_3.wsdl_to_java(*args)
		puts `java -cp #{Axis_1_3::JAR_LIST.join(':')} org.apache.axis.wsdl.WSDL2Java #{args.join(' ')}`
		$?
	end
end

# load jars for lib folders
Axis_1_3::JAR_LIST.each { |jar| require jar and puts "loaded #{jar}" }
