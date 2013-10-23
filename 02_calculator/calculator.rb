def add(*arg)
	arg.inject(:+)
end

def subtract(*arg)
	arg.inject(:-)
end

def sum(arr)
	arr.size==0 ? 0 : arr.inject(:+)
end