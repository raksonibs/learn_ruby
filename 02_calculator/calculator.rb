def add(*arg)
	arg.inject(:+)
end

def subtract(*arg)
	arg.inject(:-)
end

def sum(arr)
	arr.size==0 ? 0 : arr.inject(:+)
end

def multiply(*arr)
	arr.inject(:*)
end

def factorial(base)
	if base==1 || base==0
		return 1
	else
		base*factorial(base-1)
	end
end
