class format
def make_ary(inp)
  nary=Array.new
  @ary=inp.split("").each do |x|
  if x==" " || x=="." || x=="," || x=="'"
  else
  nary.push(x)
  end
  end
return nary.length-1
end


def format

@format_array=Array.new
i=0
flag=true
firstl=true
firsts=true

while i<@ary.length

if flag==true

if firstl==true
val=@ary[0].capitalize
firstl=false
else
  val=@ary[i]
end

else
  val=@ary[i+1]
  flag=false
end
if @ary[i]=="."
  if firsts==true
@format_array.push(".")
firsts=false
end
val=@ary[i+1].capitalize
flag=false
end
@format_array.push(val)
i+=1
end
@format_array=@format_array.compact!
# print @format_array
@format_array.each{
  |x|
  print "#{x}"
}

end

def final_format
  final_format=Array.new
  first=true
  last="."
  skip=false
#idea
@format_array.each{

  |x|

  if skip==true
  skip=false
  else
  if first==true && x=x.capitalize
  final_format.push(x)
  first=false

  elsif x=="." && first==false
  y=@format_array.index(x)+1
   final_format.push(".")
   final_format.push(@format_array[y])
   skip=true
  else

  final_format.push(x.downcase)
  end

  end
}
return final_format
end


end

a=String(gets)
obj=Format.new
puts "Number of alphabets : #{obj.make_ary(a)}"
 obj.format

 obj.final_format.each{
   |x|
   print x
 }
#end
