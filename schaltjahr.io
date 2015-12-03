
if(System args size != 2,
  "wrong number of arguments" print
  System exit
)

jahr := System args at(1) asNumber

if (jahr % 4 == 0,
  if (jahr % 100 > 0,
    "true" println,
      if (jahr % 400 == 0,
       "true" println,
       "false" println
      )
    ),
    "false" println
  )
