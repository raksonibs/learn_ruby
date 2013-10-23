def hello
	"Hello!"
end

def greet(name)
	hello.gsub("!", ", ") + "#{name}!"
end