def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(arg, num=2)
	total=""
	num.times do |i|
		total=total+arg+" "
	end
	total=total.gsub(/[" "]$/, "")
	total
end

def start_of_word(str,val)
	str.slice(0...val)
end

def first_word(word)
	word[/\w+\b/]
end

def titleize(word)
	string=""
	nos=["and", "the", "an", "over"]
	word.split(" ").each_with_index do |wo,i|
		i==0 || wo=="i"  || wo.size>=3 && !nos.include?(wo) ? string << wo.capitalize : string << wo
		string << " " unless i==word.split(" ").size-1


	end
	string

end


