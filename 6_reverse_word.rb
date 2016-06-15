a=gets.to_s
b=a.split(' ').map {|s| s.reverse!}
print b*" "