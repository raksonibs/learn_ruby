class Timer
	attr_accessor :seconds
	def initialize
		@seconds=0
	end

	def time_string
		if @seconds==0
			"00:00:00"
		else
			val=[]
			str=""
			val <<(@seconds/3600).to_s
			val <<((@seconds%3600)/60).to_s
			val << ((@seconds%3600)%60).to_s
			arr=val.map {|i| i.size==1 ? "0"+ i : i}
			arr.each do |i|
				str+=i
				str+=":" unless arr.last==i
			end
			str
		end
	end
end
