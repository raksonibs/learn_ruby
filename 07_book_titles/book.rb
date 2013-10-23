require_relative "../03_simon_says/simon_says"

class Book
	attr_accessor :title
	def title=(val)
		@title=titleize(val)
	end

	def title
		@title
	end
end

book=Book.new
book.title="stuart little"
puts book.title