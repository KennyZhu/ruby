=begin
	To implement shell commend "wc"
=end
totalCount = 0
wordCount = 0
lineCount = 0
retryTime = 0
ARGV.each{|fileName|
	l = 0 #
	w = 0 #
	t = 0 #
	begin
		file = open(fileName)
		while line = file.gets
			l += 1
			t += line.size
			line.sub!(/^\s/,"")
			tmp = line.split(/\s+/).size
			w += tmp.size
		end
		file.close
		printf("%d %d %d %s\n",w,l,t,fileName)
		totalCount += t
		wordCount += w
		lineCount += l
	rescue Exception => e
		print "Cause:",e.message,"\n"
		retryTime += 1
		sleep 3
		retry if retryTime < 3
	ensure
		p "File close!"
	end

	printf("%d %d %d %s\n",wordCount,lineCount,totalCount,"total")
}
