regexp=Regexp.new(ARGV[0])
fileName=ARGV[1]
file=open(fileName)
while text=file.gets do
	if regexp =~ text then
		print text
	end
end
file.close
