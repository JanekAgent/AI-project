(deffacts poczatek
    (question "What type od game do you want to play?")
    (actualquestion "What type od game do you want to play?")
    (possibbleanswer "A Strategy Game")
    (possibleanswer "I want a Wargame")
    
)

(defrule whichgame1
    ?f1<-(actualquestion "What type od game do you want to play?")
    (answer "A Strategy Game")
    =>
    (retract ?f1)
    (assert(actualquestion "Does theme matter to you?"))
)
(defrule whichgame2
    ?f1<-(actualquestion "What type od game do you want to play?")
    (answer "I want a Wargame")
    =>
    (retract ?f1)
    (assert(actualquestion "For how many players?"))
)
