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
