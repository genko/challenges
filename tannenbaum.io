
if(System args size != 3,
  "wrong number of arguments" print
  System exit
)

Tree := Object clone do (

  isStar := 0
  size := 0

  print := method (
    if (isStar == 1,
      printStar
    )
    printGreen
    printRoot
  )

  printStar := method (
    "*" alignRight(size, " ") println
  )

  printGreen := method (
    for(n, 0, size-1,
      "" alignLeft((n*2)+1, "X") alignCenter ((size*2)-1, " ") println
    )
  )

  printRoot := method (
    "I" alignRight(size, " ") println
  )
)

Tree size = System args at(1) asNumber

if (System args at(2) == "true",
  Tree isStar = 1
)

Tree print
