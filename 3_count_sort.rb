file = File.open("sample.txt", "r")
input= file.read.split #array
count=copy=Array.new(100)
for i in (1..100) do
  count[i-1]=0
end
j=s=0
input.each {|j| count[input[j.to_i].to_i-1]+=1 }
copy=count
for i in (1..99) do  
  count[i]=count[i]+count[i-1]
end
# print count
copy.each do |s|
  if copy[s.to_i]!=0
    contents[count[s]-1]=s+1
  end
end