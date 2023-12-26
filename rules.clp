(deffacts poczatek


    (asked "asked" "What type of game are you looking for ?" "A Strategy Game" "I want a Wargame")
    
)

(
    defrule aStrategyGame
    f1<-(asked "asked" "What type of game are you looking for ?" $?answers)
    (answer "What type of game are you looking for ?" "A Strategy Game" )
    =>
    retract(f1)
    (asked "asked" "Does theme matter to you?" "Yes" )
)
( defrule themeYes
    f1<-(asked "asked" "Does theme matter to you?" $?answers)
    (answer "Does theme matter to you?" "Yes" )
    =>
    retract(f1)
    (asked "asked" "What's your favorite theme?" "Science Fiction" "Fantasy" )
)
(defrule ScienceFiction
    f1<-(asked "asked" "What's your favorite theme?" $?answers)
    (answer "What's your favorite theme?" "Science Fiction" )
    =>
    retract(f1)
    (asked "asked" "Star Wars fan?" "Yes" "No" )
)
(defrule StarWarsFan
    f1<-(asked "asked" "Star Wars fan?" $?answers)
    (answer "Star Wars fan?" "Yes" )
    =>
    retract(f1)
    (asked "asked" "Grand adventure or tactical space combat?" "Yes" "No" )
)
(defrule GrandAdventure
    f1<-(asked "asked" "Grand adventure or tactical space combat?" $?answers)
    (answer "Grand adventure or tactical space combat?" "Yes" )
    =>
    retract(f1)
    (game "Star Wars Living Card Game")
)
(defrule pewPew
    f1<-(asked "asked" "Grand adventure or tactical space combat?" $?answers)
    (answer "Grand adventure or tactical space combat?" "No" )
    =>
    retract(f1)
    (game "Star Wars: X-Wing Miniatures Game")
)
(defrule noStarWarsFan
    f1<-(asked "asked" "Star Wars fan?" $?answers)
    (answer "Star Wars fan?" "No" )
    =>
    retract(f1)
    (asked "asked" "Star Trek, then?" "Yes" "No" )
)
(defrule StarTrek
    f1<-(asked "asked" "Star Trek, then?" $?answers)
    (answer "Star Trek, then?" "Yes" )
    =>
    retract(f1)
    (asked "asked" "One-on-one, or working together?" "Competitive" "Cooperative" )
)
(defrule oneOnOne
    f1<-(asked "asked" "One-on-one, or working together?" $?answers)
    (answer "One-on-one, or working together?" "Competitive" )
    =>
    retract(f1)
    (game "Star Trek: Fleet Captains")
)
(defrule workingTogether
    f1<-(asked "asked" "One-on-one, or working together?" $?answers)
    (answer "One-on-one, or working together?" "Cooperative" )
    =>
    retract(f1)
    (game "Star Trek: Expeditions")
)
(defrule noStarTrek
    f1<-(asked "asked" "Star Trek, then?" $?answers)
    (answer "Star Trek, then?" "No" )
    =>
    retract(f1)
    (asked "asked" "Battlestar Galactica ?" "Yes" "No" )
)
(defrule BattlestarGalactica
    f1<-(asked "asked" "Battlestar Galactica ?" $?answers)
    (answer "Battlestar Galactica ?" "Yes" )
    =>
    retract(f1)
    (game "Battlestar Galactica: The Board Game")
)
(defrule noBattlestarGalactica
    f1<-(asked "asked" "Battlestar Galactica ?" $?answers)
    (answer "Battlestar Galactica ?" "No" )
    =>
    retract(f1)
    (asked "asked" "Explore, Expand, Exploit and Exterminate?" "Of course" "That's not right")
)
(defrule 4X
    f1<-(asked "asked" "Explore, Expand, Exploit and Exterminate?" $?answers)
    (answer "Explore, Expand, Exploit and Exterminate?" "Of course" )
    =>
    retract(f1)
    (asked "asked" "How about being an alien race?" "Meybe not" "That sounds fun")
)
(defrule alienRace
    f1<-(asked "asked" "How about being an alien race?" $?answers)
    (answer "How about being an alien race?" "That sounds fun" )
    =>
    retract(f1)
    (asked "asked" "Doing battle..." "In space" "For the Galactic Centre" "For Earth"

)
)
(defrule inSpace
    f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "In space" )
    =>
    retract(f1)
    (game "Cosmic Encounter")
)
(defrule forTheGalacticCentre
    f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "For the Galactic Centre" )
    =>
    retract(f1)
    (game "Rex: Final Days of an Empire")
)
(defrule forEarth
    f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "For Earth" )
    =>
    retract(f1)
    (game "Conquest of Planet Earth")
)
(defrule notAlienRace
    f1<-(asked "asked" "How about being an alien race?" $?answers)
    (answer "How about being an alien race?" "Meybe not" )
    =>
    retract(f1)
    (asked "asked" "How about a card game?" "Sure, that works" "I like my boards" )
)
(defrule cardGame
    f1<-(asked "asked" "How about a card game?" $?answers)
    (answer "How about a card game?" "Sure, that works" )
    =>
    retract(f1)
    (asked "asked" "A Deck Builder?" "Yes" "No" )
)
(defrule deckBuilder
    f1<-(asked "asked" "A Deck Builder?" $?answers)
    (answer "A Deck Builder?" "Yes" )
    =>
    retract(f1)
    (game "Core Worlds")
)
(defrule noDeckBuilder
    f1<-(asked "asked" "A Deck Builder?" $?answers)
    (answer "A Deck Builder?" "No" )
    =>
    retract(f1)
    (asked "asked" "A Living Card Game?" "Yes" "No" )
)
(defrule livingCardGame
    f1<-(asked "asked" "A Living Card Game?" $?answers)
    (answer "A Living Card Game?" "Yes" )
    =>
    retract(f1)
    (game "Android: Netrunner")
)
(defrule noLivingCardGame
    f1<-(asked "asked" "A Living Card Game?" $?answers)
    (answer "A Living Card Game?" "No" )
    =>
    retract(f1)
    (game "Race for the Galaxy")
)
(defrule noCardGame
    f1<-(asked "asked" "How about a card game?" $?answers)
    (answer "How about a card game?" "I like my boards" )
    =>
    retract(f1)
    (asked "asked" "If not alien, I'll be a..." "Athlete" "GAlactic Corporation" "Space Crew on Mission" "Merchant")

)
(defrule athlete
    f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Athlete" )
    =>
    retract(f1)
    (game "Dreadball:The Futuristic Sports Game")
)
(defrule galacticCorporation
    f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "GAlactic Corporation" )
    =>
    retract(f1)
    (game "Phantom League")
)
(defrule spaceCrewOnMission
    f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Space Crew on Mission" )
    =>
    retract(f1)
    (asked "asked" "How will you succeed?" "Teamwork and high-speed planning" "Teamwork and dexerity" )

)
(defrule teamworkAndHighSpeedPlanning
    f1<-(asked "asked" "How will you succeed?" $?answers)
    (answer "How will you succeed?" "Teamwork and high-speed planning" )
    =>
    retract(f1)
    (game "Space Alert")
)
(defrule teamworkAndDexerity
    f1<-(asked "asked" "How will you succeed?" $?answers)
    (answer "How will you succeed?" "Teamwork and dexerity" )
    =>
    retract(f1)
    (game "Space Cadets")
)
(defrule merchant
    f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Merchant" )
    =>
    retract(f1)
    (asked "asked" "Seriously?" "It's serious business" "Nah,we just want a giggle" )

)
(defrule seriously
    f1<-(asked "asked" "Seriously?" $?answers)
    (answer "Seriously?" "It's serious business" )
    =>
    retract(f1)
    (game "Merchant of Venus")
)
(defrule nah
    f1<-(asked "asked" "Seriously?" $?answers)
    (answer "Seriously?" "Nah,we just want a giggle" )
    =>
    retract(f1)
    (game "Galaxy Trucker")
)
(defrule 4X
    f1<-(asked "asked" "Explore, Expand, Exploit and Exterminate?" $?answers)
    (answer "Explore, Expand, Exploit and Exterminate?" "Of course!" )
    =>
    retract(f1)
    (asked "asked" "So, just how epic are we getting?" "We've got all day" "It is a work nigh...")

)
(defrule weveGotAllDay
    f1<-(asked "asked" "So, just how epic are we getting?" $?answers)
    (answer "So, just how epic are we getting?" "We've got all day" )
    =>
    retract(f1)
    (game "Twilight Imperium: 3rd Edition")


)
(defrule itIsAWorkNight
    f1<-(asked "asked" "So, just how epic are we getting?" $?answers)
    (answer "So, just how epic are we getting?" "It is a work night..." )
    =>
    retract(f1)
    (game "Eclipse")

)













