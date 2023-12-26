(deffacts poczatek
; (question "question" "Pytanie" "Odpowiedz1" "Nastepnepytanie" "Odpowiedz2" "Nastepnepytanie2")

    (question "question" "What type od game do you want to play?" "A Strategy Game" "Dzem" "I want a Wargame" "Kolega")
    (actualquestion "actualquestion" "What type od game do you want to play?")
    
    (question "Does theme matter to you?" "Yes" "No")
    
    
)

(defrule mainrule
    ?f<-(actualquestion "actualquestion" ?question)
    ?f2<-(actualanswer ?answer)
    (question "question" ?question $?answers1 ?answer ?nextquestion $?answers2)
    =>
    (retract ?f)
    (retract ?f2)
    (printout t "wreorwer " ?answer crlf)
    (assert (answer ?question ?answer))
    (assert (actualquestion ?nextquestion))

)

