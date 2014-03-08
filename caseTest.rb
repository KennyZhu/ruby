names=["A","B","C","D"]
names.each{|name|
case name
when "B","C"
	print "1",name,"\n"
when "C","D"
	print "2", name,"\n"
end
}
