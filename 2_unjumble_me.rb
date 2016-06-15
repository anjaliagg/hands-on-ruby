#ARGV.to_s.each_char { |c| puts ((c.ord-3).chr).to_s}

a= ARGV* " "
a.each_char do |c| 
	if c== ' '
		print ' '
	elsif c=='a'
		print 'x'
	elsif c=='A'
		print 'X'
	elsif c=='b'
		print 'y'
	elsif c=='B'
		print 'Y'
	elsif c=='c'
		print 'z'
	elsif c=='C'
		print 'Z'
	else
	print (c.ord-3).chr
end
end