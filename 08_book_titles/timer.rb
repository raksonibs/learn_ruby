class Timer
	attr_accessor :seconds
	def initialize
		@seconds=0
	end

	def time_string
		minutes="#{@seconds/60.0}"
		minutesfract=((((minutes[/.\w+/]).to_f*60).round.to_s))
		total=minutes[/\w./]+minutesfract
	end
end

dog=Timer.new
dog.seconds=634
puts dog.time_string