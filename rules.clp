(deffacts poczatek


    (asked "asked" "What type of game are you looking for ?" "A Strategy Game" "I want a Wargame")
    
)

(
    defrule aStrategyGame
    f1<-(asked "asked" "What type of game are you looking for ?" $?answers)
    (answer "What type of game are you looking for ?" "A Strategy Game" )
    =>
    retract(f1)
    (asked "asked" "Does theme matter to you?" "Yes" "No")
)
( defrule themeYes
    f1<-(asked "asked" "Does theme matter to you?" $?answers)
    (answer "Does theme matter to you?" "Yes" )
    =>
    retract(f1)
    (asked "asked" "What's your favorite theme?" "Science Fiction" "Fantasy" )
)





