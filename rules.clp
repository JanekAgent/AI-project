(deffacts poczatek

    (question "question" "What type od game do you want to play?" "A Strategy Game" "Dzem" "I want a Wargame" "Kolega")
    (actualquestion "What type od game do you want to play?")
    
    (question "Does theme matter to you?" "Yes" "No")
    
    
)

(defrule mainrule
    ?f<-(actualanswer ?question)
    (actualanswer ?answer)
    (question ?question $?answers1 ?answer ?nextquestion $?answers2)
    =>
    (retract ?f)
    (assert (answer ?question ?answer))
    (assert (actualquestion ?nextquestion))

)

