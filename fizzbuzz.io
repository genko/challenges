
if(System args size != 2,
  "wrong number of arguments" print
  System exit
)

jahr := System args at(1) asNumber

if (jahr % 3 == 0,
  if (jahr % 5 == 0,
    "FizzBuzz" println,
    "Fizz" println
  ),
  if (jahr % 5 == 0,
    "Buzz" println,
    jahr println
  )
)
