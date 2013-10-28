class Game
	def score(n)
		#10 is one turn, and if there are any tens the bonus is 
		#the value of te next two balls rolled
		spares=[]
		spare=0 #will record next pin if saw spare (two make ten), then add to score
		strikes=[]
		total=0 # will record next ten pins if saw a ten
		n.each_with_index do |val,i|
			if val==10
				unless i==9 || i==10 || i==11
					strikes << n[i+1] 
					strikes << n[i+2]
				end
				total+=val

			else

				spare+=val


				if i%2!=0

					if spare==10
						spares << n[i+1] unless i==19

					end
					spare=0
				end
				total+=val
			end
		end
	sum=spares.compact.inject(total) {|sum,value| sum+value}
	strikes.compact.inject(sum) {|s,v| s+v}




	end
end


