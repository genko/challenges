
Kino := Object clone do (
  name := ""
  seats := 0
)

Kinos := List clone

"Wie viele Kinosaele hat das Kino? " asUTF8 print
kinoNum := File standardInput readLine asNumber

seatsTotal := 0

for(i, 1, kinoNum,
    kinoN := Kino clone
    "Name fuer Kinosaal #{i}: " interpolate print
    nameN := File standardInput readLine
    kinoN name = nameN
    "Anzahl Sitzplaetze in #{nameN}: " interpolate print
    num := File standardInput readLine asNumber
    kinoN seats = num
    seatsTotal = seatsTotal + num
    Kinos push(kinoN)
)

"Das Kino hat #{kinoNum} Raeume mit insgesamt #{seatsTotal} Sitzplaetze." interpolate println

for(i, 1, kinoNum,
    name := Kinos at(i-1) name
    num :=  Kinos at(i-1) seats
    "Kinosaal #{i} mit Name #{name} hat #{num} Sitzplaetze." interpolate println
)
