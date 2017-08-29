class format
def make_ary(inp)
  nary=Array.new
  @ary=inp.split("").each do |x|
  if x==" " || x=="." || x=="," || x=="'"
  else
  nary.push(x)
  end
  end

end

end
