if(System args size != 2,
  "wrong number of arguments" print
  System exit
)

malulu := System args at(1) asNumber

f := File with("einmaleins.txt")
f openForUpdating

blubber := ""
number := 0

for(i, 1, malulu,
  for(j, 1, malulu,
    number = i * j
    if ( j != malulu,
      blubber = "#{number}\t" interpolate,
      blubber = "#{number}" interpolate
    )
    f write(blubber)
  )
  if ( i != malulu,
   f write("\n")
  )
)
f close
