require_relative "../01_temperature/temperature"

class Temperature

	attr_accessor :hash
	def initialize(hash)
		@hash=hash
	end

	def to_fahrenheit
		self.hash.each_key do |k|
			return ctof(hash[k]) if k==:c
			return hash[k] if k==:f
		end
	end

	def to_celsius
		self.hash.each_key do |k|
			return ftoc(hash[k]) if k==:f
			return hash[k] if k==:c
		end
	end

	def self.in_celsius(val)
		self.new({:c=>val})
	end

	def self.in_fahrenheit(val)
		self.new({:f=>val})
	end
end

class Celsius < Temperature
	def initialize(val)
		super({:c=>val})
	end
end

class Fahrenheit < Temperature
	def initialize(val)
		super({:f=>val})
	end
end

p Temperature.new({:c => 50}).to_celsius
p Temperature.in_celsius(50).to_celsius