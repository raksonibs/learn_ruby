class Array
	#making instance methods and class methods

	def self.sum
		sum
	end

	def sum
		self.size==0 ? 0 : self.inject(:+)
	end

	def self.square
		square
	end

	def square
		self.map {|i| i**2}
	end

	def square!
		self.map! {|i| i**2}
	end

	

	
end
