class Changer
	def self.make_change(n)
		hash,val={},[]
		[25,10,5,1].each do |i|
			hash[i]=n/i
			n=n%i
		end
		hash.each do |k,v|
			v.times do
				val << k
			end
		end
		val

	end
end

Changer.make_change(68)