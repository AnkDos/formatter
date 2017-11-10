
#main
inp="hello world . i am ankur paNdeY fRom *india* and i loVe to code . this is my life , my everything . i love to leaRn and TEACH . connect to my github. "
ar=inp.split(" ")
ar[0]=ar[0].capitalize
i=1
while i<ar.length
         ar[i]=ar[i].downcase
         i+=1
end

i=1
while i<ar.length
    if ar[i-1]=="."
        ar[i]=ar[i].capitalize
    end
    i+=1
end
i=0
while i<ar.length
    if ar[i].include? "*"
        ar[i]=ar[i].upcase.delete '*'
    end
    i+=1
end 

  print ar.join(' ')

 

