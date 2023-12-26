(deffacts poczatek

    (question "What type od game do you want to play?" "A Strategy Game" "Dzem" "I want a Wargame" "Kolega")
    (actualquestion "What type od game do you want to play?")
    
    (question "Does theme matter to you?" "Yes" "No")
    
)

(defrule mainrule
    ?f<-(actualanswer ?answer)
    (question ?question $?answers)
    =>
    (retract ?f)
    (assert (answer ?question $?answers))

)

