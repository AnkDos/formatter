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


end

end
