(deffacts poczatek


    (asked "asked" "What type of game are you looking for ?" "A Strategy Game" "I want a Wargame")
    
)
(defrule iWantAWargame
    ?f1<-(asked "asked" "What type of game are you looking for ?" $?answers)
    (answer "What type of game are you looking for ?" "I want a Wargame" )
    =>
    (retract ?f1)
    (assert (asked "asked" "For how many players?" "2 or more" "Just me"))
)

(
    defrule justMe
    ?f1<-(asked "asked" "For how many players?" $?answers)
    (answer "For how many players?" "Just me" )
    =>
    (retract ?f1)
    (assert (asked "asked" "Oto gry do wybory, którą z nich wybierasz?"
    "Field Commander Series ~ Historic Battles"
    "Thunderbolt: Apache Leader ~ Modern Air Support"
    "Space Infantry ~ Science Fiction"))
)

(
    defrule fieldCommanderSeries
    ?f1<-(asked "asked" "Oto gry do wybory, którą z nich wybierasz?" $?answers)
    (answer "Oto gry do wybory, którą z nich wybierasz?" "Field Commander Series ~ Historic Battles" )
    =>
    (retract ?f1)
    (assert (game "game" "Field Commander Series ~ Historic Battles"))
)

(
    defrule thunderboltApacheLeader
    ?f1<-(asked "asked" "Oto gry do wybory, którą z nich wybierasz?" $?answers)
    (answer "Oto gry do wybory, którą z nich wybierasz?" "Thunderbolt: Apache Leader ~ Modern Air Support" )
    =>
    (retract ?f1)
    (assert (game "game" "Thunderbolt: Apache Leader ~ Modern Air Support"))
)

(
    defrule spaceInfantry
    ?f1<-(asked "asked" "Oto gry do wybory, którą z nich wybierasz?" $?answers)
    (answer "Oto gry do wybory, którą z nich wybierasz?" "Space Infantry ~ Science Fiction" )
    =>
    (retract ?f1)
    (assert (game "game" "Space Infantry ~ Science Fiction"))
)

(
    defrule twoOrMore
    ?f1<-(asked "asked" "For how many players?" $?answers)
    (answer "For how many players?" "2 or more" )
    =>
    (retract ?f1)
    (assert (asked "asked" "Do you have any wargaming experience?"
    "It's new to me"
    "Yes"))
)

(
    defrule itsNewToMe
    ?f1<-(asked "asked" "Do you have any wargaming experience?" $?answers)
    (answer "Do you have any wargaming experience?" "It's new to me" )
    =>
    (retract ?f1)
    (assert (asked "asked" "Are you a fan of Risk?"
    "Yes"
    "No"))
)

(
    defrule riskYes
    ?f1<-(asked "asked" "Are you a fan of Risk?" $?answers)
    (answer "Are you a fan of Risk?" "Yes" )
    =>
    (retract ?f1)
    (assert (game "game" "Risk: Legacy"))
)

(
    defrule riskNo
    ?f1<-(asked "asked" "Are you a fan of Risk?" $?answers)
    (answer "Are you a fan of Risk?" "No" )
    =>
    (retract ?f1)
    (assert (asked "asked" "World history or high fantasy?"
    "History"
    "Fantasy"))
)

(
    defrule worldHistory
    ?f1<-(asked "asked" "World history or high fantasy?" $?answers)
    (answer "World history or high fantasy?" "History" )
    =>
    (retract ?f1)
    (assert (game "game" "Memoir '44"))
)

(
    defrule highFantasy
    ?f1<-(asked "asked" "World history or high fantasy?" $?answers)
    (answer "World history or high fantasy?" "Fantasy" )
    =>
    (retract ?f1)
    (assert (game "game" "Battles of Westeros"))
)


(
    defrule twoOrMoreYes
    ?f1<-(asked "asked" "Do you have any wargaming experience?" $?answers)
    (answer "Do you have any wargaming experience?" "Yes" )
    =>
    (retract ?f1)
    (assert (asked "asked" "Want to command Roman legions?"
    "Yes"
    "No"))
)

(
    defrule romanLegions
    ?f1<-(asked "asked" "Want to command Roman legions?" $?answers)
    (answer "Want to command Roman legions?" "Yes" )
    =>
    (retract ?f1)
    (assert (game "game" "Commands & Colors: Ancients"))
)

(
    defrule romanLegionsNo
    ?f1<-(asked "asked" "Want to command Roman legions?" $?answers)
    (answer "Want to command Roman legions?" "No" )
    =>
    (retract ?f1)
    (assert (asked "asked" "Lead 19th Century battle lines?"
    "No"
    "Yes"))
)

(
    defrule battleLinesYes
    ?f1<-(asked "asked" "Lead 19th Century battle lines?" $?answers)
    (answer "Lead 19th Century battle lines?" "Yes" )
    =>
    (retract ?f1)
    (assert (game "game" "1812: The Invasion of Canada"))
)

(
    defrule battleLinesNo
    ?f1<-(asked "asked" "Lead 19th Century battle lines?" $?answers)
    (answer "Lead 19th Century battle lines?" "No" )
    =>
    (retract ?f1)
    (assert (asked "How about World War II ?"
    "Yes"
    "No"))
)

(
    defrule worldWarIIYes
    ?f1<-(asked "asked" "How about World War II ?" $?answers)
    (answer "How about World War II ?" "Yes" )
    =>
    (retract ?f1)
    (assert (asked "Card or dice driven combat?"
    "roll roll roll"
    "shuffle shuffle"))
)

(
    defrule worldWarIIYesRoll
    ?f1<-(asked "asked" "Card or dice driven combat?" $?answers)
    (answer "Card or dice driven combat?" "roll roll roll" )
    =>
    (retract ?f1)
    (assert (game "game" "Tide of Iron"))
)

(
    defrule worldWarIIYesCard
    ?f1<-(asked "asked" "Card or dice driven combat?" $?answers)
    (answer "Card or dice driven combat?" "shuffle shuffle" )
    =>
    (retract ?f1)
    (assert (game "game" "Combat Commnader Series"))
)

(
    defrule worldWarIINo
    ?f1<-(asked "asked" "How about World War II ?" $?answers)
    (answer "How about World War II ?" "No" )
    =>
    (retract ?f1)
    (assert (asked "Modern Warfare, then?"
    "Yes, I like the immediacy"
    "No, I'm tired of real wars"))
)

(
    defrule moderWarfareYes
    ?f1<-(asked "asked" "Modern Warfare, then?" $?answers)
    (answer "Modern Warfare, then?" "Yes" )
    =>
    (retract ?f1)
    (assert (game "game" "Labyrinth: The War on Terror"))
)

(
    defrule moderWarfareNo
    ?f1<-(asked "asked" "Modern Warfare, then?" $?answers)
    (answer "Modern Warfare, then?" "No, I'm tired of real wars" )
    =>
    (retract ?f1)
    (assert (asked "Science Fiction or alternative History?"
    "Alt-History"
    "Science Fiction"))
)

(
    defrule altHistory
    ?f1<-(asked "asked" "Science Fiction or alternative History?" $?answers)
    (answer "Science Fiction or alternative History?" "Alt-History")
    =>
    (retract ?f1)
    (assert (asked "Tactical miniatures or large-scale strategy?"
    "Strategic"
    "Tactical"))
)

(
    defrule altHistoryStrategic
    ?f1<-(asked "asked" "Tactical miniatures or large-scale strategy?" $?answers)
    (answer "Tactical miniatures or large-scale strategy?" "Strategic")
    =>
    (retract ?f1)
    (assert (game "game" "Fortress America"))
)

(
    defrule altHistoryTactical
    ?f1<-(asked "asked" "Tactical miniatures or large-scale strategy?" $?answers)
    (answer "Tactical miniatures or large-scale strategy?" "Tactical")
    =>
    (retract ?f1)
    (assert (game "game" "Dust Tactics"))
)

(
    defrule scienceFiction
    ?f1<-(asked "asked" "Science Fiction or alternative History?" $?answers)
    (answer "Science Fiction or alternative History?" "Science Fiction")
    =>
    (retract ?f1)
    (assert (asked "Space ships or giant robots?"
    "Ships!"
    "Mechs!"))
)

(
    defrule scienceFictionShips
    ?f1<-(asked "asked" "Space ships or giant robots?" $?answers)
    (answer "Space ships or giant robots?" "Ships!")
    =>
    (retract ?f1)
    (assert (game "game" "Battleship Galaxies"))
)

(
    defrule scienceFictionMechs
    ?f1<-(asked "asked" "Space ships or giant robots?" $?answers)
    (answer "Space ships or giant robots?" "Mechs!!")
    =>
    (retract ?f1)
    (assert (game "game" "Battletech"))
)
(
    defrule aStrategyGame
    ?f1<-(asked "asked" "What type of game are you looking for ?" $?answers)
    (answer "What type of game are you looking for ?" "A Strategy Game" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Does theme matter to you?" "Yes" )
))
( defrule themeYes
    ?f1<-(asked "asked" "Does theme matter to you?" $?answers)
    (answer "Does theme matter to you?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "What's your favorite theme?" "Science Fiction" "Fantasy" )
))
(defrule ScienceFiction
    ?f1<-(asked "asked" "What's your favorite theme?" $?answers)
    (answer "What's your favorite theme?" "Science Fiction" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Star Wars fan?" "Yes" "No" )
))
(defrule StarWarsFan
    ?f1<-(asked "asked" "Star Wars fan?" $?answers)
    (answer "Star Wars fan?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Grand adventure or tactical space combat?" "Adventure" "Pew! Pew!" )
))
(defrule GrandAdventure
    ?f1<-(asked "asked" "Grand adventure or tactical space combat?" $?answers)
    (answer "Grand adventure or tactical space combat?" "Adventure" )
    =>
    (retract ?f1 )
    (assert (game "game" "Star Wars Living Card Game"))
)
(defrule pewPew
    ?f1<-(asked "asked" "Grand adventure or tactical space combat?" $?answers)
    (answer "Grand adventure or tactical space combat?" "Pew! Pew!" )
    =>
    (retract ?f1 )
    (assert (game "game" "Star Wars: X-Wing Miniatures Game"))
)
(defrule noStarWarsFan
    ?f1<-(asked "asked" "Star Wars fan?" $?answers)
    (answer "Star Wars fan?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Star Trek, then?" "Yes" "No" )
))
(defrule StarTrek
    ?f1<-(asked "asked" "Star Trek, then?" $?answers)
    (answer "Star Trek, then?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "One-on-one, or working together?" "Competitive" "Cooperative" )
))
(defrule oneOnOne
    ?f1<-(asked "asked" "One-on-one, or working together?" $?answers)
    (answer "One-on-one, or working together?" "Competitive" )
    =>
    (retract ?f1 )
    (assert (game "game" "Star Trek: Fleet Captains"))
)
(defrule workingTogether
    ?f1<-(asked "asked" "One-on-one, or working together?" $?answers)
    (answer "One-on-one, or working together?" "Cooperative" )
    =>
    (retract ?f1 )
    (assert (game "game" "Star Trek: Expeditions"))
)
(defrule noStarTrek
    ?f1<-(asked "asked" "Star Trek, then?" $?answers)
    (answer "Star Trek, then?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Battlestar Galactica ?" "Yes" "No" )
))
(defrule BattlestarGalactica
    ?f1<-(asked "asked" "Battlestar Galactica ?" $?answers)
    (answer "Battlestar Galactica ?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Battlestar Galactica: The Board Game"))
)
(defrule noBattlestarGalactica
    ?f1<-(asked "asked" "Battlestar Galactica ?" $?answers)
    (answer "Battlestar Galactica ?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Explore, Expand, Exploit and Exterminate?" "Of course" "That's not right")
))
(defrule 4X
    ?f1<-(asked "asked" "Explore, Expand, Exploit and Exterminate?" $?answers)
    (answer "Explore, Expand, Exploit and Exterminate?" "Of course" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How about being an alien race?" "Meybe not" "That sounds fun")
))
(defrule alienRace
    ?f1<-(asked "asked" "How about being an alien race?" $?answers)
    (answer "How about being an alien race?" "That sounds fun" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Doing battle..." "In space" "For the Galactic Centre" "For Earth"

))
)
(defrule inSpace
    ?f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "In space" )
    =>
    (retract ?f1 )
    (assert (game "game" "Cosmic Encounter"))
)
(defrule forTheGalacticCentre
    ?f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "For the Galactic Centre" )
    =>
    (retract ?f1 )
    (assert (game "game" "Rex: Final Days of an Empire"))
)
(defrule forEarth
    ?f1<-(asked "asked" "Doing battle..." $?answers)
    (answer "Doing battle..." "For Earth" )
    =>
    (retract ?f1 )
    (assert (game "game" "Conquest of Planet Earth"))
)
(defrule notAlienRace
    ?f1<-(asked "asked" "How about being an alien race?" $?answers)
    (answer "How about being an alien race?" "Meybe not" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How about a card game?" "Sure, that works" "I like my boards" )
))
(defrule cardGame
    ?f1<-(asked "asked" "How about a card game?" $?answers)
    (answer "How about a card game?" "Sure, that works" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "A Deck Builder?" "Yes" "No" )
))
(defrule deckBuilder
    ?f1<-(asked "asked" "A Deck Builder?" $?answers)
    (answer "A Deck Builder?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Core Worlds"))
)
(defrule noDeckBuilder
    ?f1<-(asked "asked" "A Deck Builder?" $?answers)
    (answer "A Deck Builder?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "A Living Card Game?" "Yes" "No" )
))
(defrule livingCardGame
    ?f1<-(asked "asked" "A Living Card Game?" $?answers)
    (answer "A Living Card Game?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Android: Netrunner"))
)
(defrule noLivingCardGame
    ?f1<-(asked "asked" "A Living Card Game?" $?answers)
    (answer "A Living Card Game?" "No" )
    =>
    (retract ?f1 )
    (assert (game "game" "Race for the Galaxy"))
)
(defrule noCardGame
    ?f1<-(asked "asked" "How about a card game?" $?answers)
    (answer "How about a card game?" "I like my boards" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "If not alien, I'll be a..." "Athlete" "GAlactic Corporation" "Space Crew on Mission" "Merchant"))

)
(defrule athlete
    ?f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Athlete" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dreadball:The Futuristic Sports Game"))
)
(defrule galacticCorporation
    ?f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "GAlactic Corporation" )
    =>
    (retract ?f1 )
    (assert (game "game" "Phantom League"))
)
(defrule spaceCrewOnMission
    ?f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Space Crew on Mission" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How will you succeed?" "Teamwork and high-speed planning" "Teamwork and dexerity" ))

)
(defrule teamworkAndHighSpeedPlanning
    ?f1<-(asked "asked" "How will you succeed?" $?answers)
    (answer "How will you succeed?" "Teamwork and high-speed planning" )
    =>
    (retract ?f1 )
    (assert (game "game" "Space Alert"))
)
(defrule teamworkAndDexerity
    ?f1<-(asked "asked" "How will you succeed?" $?answers)
    (answer "How will you succeed?" "Teamwork and dexerity" )
    =>
    (retract ?f1 )
    (assert (game "game" "Space Cadets"))
)
(defrule merchant
    ?f1<-(asked "asked" "If not alien, I'll be a..." $?answers)
    (answer "If not alien, I'll be a..." "Merchant" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Seriously?" "It's serious business" "Nah,we just want a giggle" ))

)
(defrule seriously
    ?f1<-(asked "asked" "Seriously?" $?answers)
    (answer "Seriously?" "It's serious business" )
    =>
    (retract ?f1 )
    (assert (game "game" "Merchant of Venus"))
)
(defrule nah
    ?f1<-(asked "asked" "Seriously?" $?answers)
    (answer "Seriously?" "Nah,we just want a giggle" )
    =>
    (retract ?f1 )
    (assert (game "game" "Galaxy Trucker"))
)
(defrule 4X
    ?f1<-(asked "asked" "Explore, Expand, Exploit and Exterminate?" $?answers)
    (answer "Explore, Expand, Exploit and Exterminate?" "Of course!" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "So, just how epic are we getting?" "We've got all day" "It is a work nigh..."))

)
(defrule weveGotAllDay
    ?f1<-(asked "asked" "So, just how epic are we getting?" $?answers)
    (answer "So, just how epic are we getting?" "We've got all day" )
    =>
    (retract ?f1 )
    (assert (game "game" "Twilight Imperium: 3rd Edition"))


)
(defrule itIsAWorkNight
    ?f1<-(asked "asked" "So, just how epic are we getting?" $?answers)
    (answer "So, just how epic are we getting?" "It is a work night..." )
    =>
    (retract ?f1 )
    (assert (game "game" "Eclipse"))

)
(defrule fantasy
    ?f1<-(asked "asked" "What's your favorite theme?" $?answers)
    (answer "What's your favorite theme?" "Fantasy" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Do you want a dungeon crawling adventure?" "Yes" "No" ))

)
(defrule dungeonCrawlingAdventure
    ?f1<-(asked "asked" "Do you want a dungeon crawling adventure?" $?answers)
    (answer "Do you want a dungeon crawling adventure?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "A serious one?" "Yes" "No" ))


)

(defrule serious
    ?f1<-(asked "asked" "A serious one?" $?answers)
    (answer "A serious one?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How many players" "Just two of us" "More than two" ))
    
)
(defrule justTwoOfUs
    ?f1<-(asked "asked" "How many players" $?answers)
    (answer "How many players" "Just two of us" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Crush or out-maneuver your enemies?" "Fight" "Maneuver" ))
)
(defrule crush
    ?f1<-(asked "asked" "Crush or out-maneuver your enemies?" $?answers)
    (answer "Crush or out-maneuver your enemies?" "Fight" )
    =>
    (retract ?f1 )
    (assert (game "game" "Claustrophobia"))
)
(defrule maneuver
    ?f1<-(asked "asked" "Crush or out-maneuver your enemies?" $?answers)
    (answer "Crush or out-maneuver your enemies?" "Maneuver" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dungeon Twister 2: Prison" ))

)
(defrule moreThanTwo
    ?f1<-(asked "asked" "How many players" $?answers)
    (answer "How many players" "More than two" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Cooperative or competitive?" "Cooperative" "Competitive" ))
)
(defrule cooperative
    ?f1<-(asked "asked" "Cooperative or competitive?" $?answers)
    (answer "Cooperative or competitive?" "Cooperative" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Playing with kids?" "Yes" "No" ))
)
(defrule playingWithKids
    ?f1<-(asked "asked" "Playing with kids?" $?answers)
    (answer "Playing with kids?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Mice and Mystics"))
)
(defrule notPlayingWithKids
    ?f1<-(asked "asked" "Playing with kids?" $?answers)
    (answer "Playing with kids?" "No" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dungeons ad Dragons: Legend of Drizzt"))

)
(defrule competitive
    ?f1<-(asked "asked" "Cooperative or competitive?" $?answers)
    (answer "Cooperative or competitive?" "Competitive" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Do you want a campaign?" "Yes" "Just one game" ))
)
(defrule campaign
    ?f1<-(asked "asked" "Do you want a campaign?" $?answers)
    (answer "Do you want a campaign?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Descent: Journeys in the Dark 2nd Edition"))
)
(defrule justOneGame
    ?f1<-(asked "asked" "Do you want a campaign?" $?answers)
    (answer "Do you want a campaign?" "Just one game" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dungeon Run"))
)
(defrule notSerious
    ?f1<-(asked "asked" "A serious one?" $?answers)
    (answer "A serious one?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How about managing your own dungeon?" "Yes" "No" ))
)
(defrule managingYourOwnDungeon
    ?f1<-(asked "asked" "How about managing your own dungeon?" $?answers)
    (answer "How about managing your own dungeon?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dungeon Lords"))
)
(defrule notManagingYourOwnDungeon
    ?f1<-(asked "asked" "How about managing your own dungeon?" $?answers)
    (answer "How about managing your own dungeon?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Want the whole questing thing, eh?" "Yes" "No" ))
)
(defrule wholeQuestingThing
    ?f1<-(asked "asked" "Want the whole questing thing, eh?" $?answers)
    (answer "Want the whole questing thing, eh?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Competitive or cooperative?" "Competitive" "Cooperative" "Cooperative - if I can backstab" ))

)
(defrule competitiveQuestDungeon
    ?f1<-(asked "asked" "Competitive or cooperative?" $?answers)
    (answer "Competitive or cooperative?" "Competitive" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Mind getting trounced by random events?" "Yes, Strategy matters" "No, it's the experience that counts" ))
)
(defrule strategyMatters
    ?f1<-(asked "asked" "Mind getting trounced by random events?" $?answers)
    (answer "Mind getting trounced by random events?" "Yes, Strategy matters" )
    =>
    (retract ?f1 )
    (assert (game "game" "Mage Knight"))
)
(defrule experienceCounts
    ?f1<-(asked "asked" "Mind getting trounced by random events?" $?answers)
    (answer "Mind getting trounced by random events?" "No, it's the experience that counts" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Is storytelling important?" "Yes" "Not as much as combat!" ))
)
(defrule storytellingImportant
    ?f1<-(asked "asked" "Is storytelling important?" $?answers)
    (answer "Is storytelling important?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "Tales of the Arabian Nights"))
)
(defrule notAsMuchAsCombat
    ?f1<-(asked "asked" "Is storytelling important?" $?answers)
    (answer "Is storytelling important?" "Not as much as combat!" )
    =>
    (retract ?f1 )
    (assert (game "game" "Talisman"))
)
(defrule cooperativeQuestDungeon
    ?f1<-(asked "asked" "Competitive or cooperative?" $?answers)
    (answer "Competitive or cooperative?" "Cooperative" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Board or card game?" "Boards" "Cards" ))

)
(defrule boardsCooperativeQuestDungeon
    ?f1<-(asked "asked" "Board or card game?" $?answers)
    (answer "Board or card game?" "Boards" )
    =>
    (retract ?f1 )
    (assert (game "game" "Defenders of the Realm"))
)
(defrule cardsCooperativeQuestDungeon
    ?f1<-(asked "asked" "Board or card game?" $?answers)
    (answer "Board or card game?" "Cards" )
    =>
    (retract ?f1 )
    (assert (game "game" "Lord of the Rings: The Card Game"))
)
(defrule cooperativeIfICanBackstab
    ?f1<-(asked "asked" "Cooperative - if I can backstab" $?answers)
    (answer "Cooperative - if I can backstab" "Cooperative - if I can backstab" )
    =>
    (retract ?f1 )
    (assert (game "game" "Shadows over Camelot"))
)
(defrule noQuesting
    ?f1<-(asked "asked" "Want the whole questing thing, eh?" $?answers)
    (answer "Want the whole questing thing, eh?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Do you like Deckbuilders?" "Yes" "No" ))
)
(defrule deckBuilders
    ?f1<-(asked "asked" "Do you like deckBuilders?" $?answers)
    (answer "Do you like deckBuilders?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Competitive Deck Builders?" "Competitive" "Cooperative" ))
)
(defrule competitiveDeckBuilders
    ?f1<-(asked "asked" "Competitive Deck Builders?" $?answers)
    (answer "Competitive Deck Builders?" "Competitive" )
    =>
    (retract ?f1 )
    (assert (game "game" "Thunderstone: Advance"))
)
(defrule cooperativeDeckBuilders
    ?f1<-(asked "asked" "Competitive Deck Builders?" $?answers)
    (answer "Competitive Deck Builders?" "Cooperative" )
    =>
    (retract ?f1 )
    (assert (game "game" "Rune Age"))
)
(defrule noDeckBuilders
    ?f1<-(asked "asked" "Do you like deckBuilders?" $?answers)
    (answer "Do you like deckBuilders?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Lord of the Rings fan?" "Yes" "No" ))
)
(defrule lordOfTheRingsFan
    ?f1<-(asked "asked" "Lord of the Rings fan?" $?answers)
    (answer "Lord of the Rings fan?" "Yes" )
    =>
    (retract ?f1 )
    (assert (game "game" "War of the Ring"))
)
(defrule noLordOfTheRingsFan
    ?f1<-(asked "asked" "Lord of the Rings fan?" $?answers)
    (answer "Lord of the Rings fan?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "How about a castle defence?" "Sounds fun!" "Not for me" ))
)
(defrule soundsFun
    ?f1<-(asked "asked" "How about a castle defence? " $?answers)
    (answer "How about a castle defence? ""Sounds fun!" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Cooperative or competitive?" "Cooperative" "Competitive" ) ) 
)
(defrule cooperativeCastleDefence
    ?f1<-(asked "asked" "Cooperative or competitive?" $?answers)
    (answer "Cooperative or competitive?" "Cooperative" )
    =>
    (retract ?f1 )
    (assert (game "game" "Castle Panic"))
)
(defrule competitiveCastleDefence
    ?f1<-(asked "asked" "Cooperative or competitive?" $?answers)
    (answer "Cooperative or competitive?" "Competitive" )
    =>
    (retract ?f1 )
    (assert (game "game" "Castle Rampage"))
)
(defrule notSoundsFun
    ?f1<-(asked "asked" "How about a castle defence? " $?answers)
    (answer "How about a castle defence?" "Not for me" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Conquest in a fantasy world?" "Yes" "No" ))

)
(defrule conquestInAFantasyWorld
    ?f1<-(asked "asked" "Conquest in a fantasy world?" $?answers)
    (answer "Conquest in a fantasy world?" "Yes" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Epic?" "Yes! It's gotta be big" "No,keep it quick" ))
)
(defrule epic
    ?f1<-(asked "asked" "Epic?" $?answers)
    (answer "Epic?" "Yes! It's gotta be big" )
    =>
    (retract ?f1 )
    (assert (game "game" "Runewars"))
)
(defrule keepItQuick
    ?f1<-(asked "asked" "Epic?" $?answers)
    (answer "Epic?" "No,keep it quick" )
    =>
    (retract ?f1 )
    (assert (game "game" "Small World"))
)
(defrule noConquestInAFantasyWorld
    ?f1<-(asked "asked" "Conquest in a fantasy world?" $?answers)
    (answer "Conquest in a fantasy world?" "No" )
    =>
    (retract ?f1 )
    (assert (asked "asked" "Everday life, eh?" "Running a business" "Relaxing after work" "Annihilating your business rivals" ))
)
(defrule runningABusiness
    ?f1<-(asked "asked" "Everday life, eh?" $?answers)
    (answer "Everday life, eh?" "Running a business" )
    =>
    (retract ?f1 )
    (assert (game "game" "Dungeon Petz"))
)
(defrule relaxingAfterWork
    ?f1<-(asked "asked" "Everday life, eh?" $?answers)
    (answer "Everday life, eh?" "Relaxing after work" )
    =>
    (retract ?f1 )
    (assert (game "game" "Red Dragon Inn"))
)
(defrule annihilatingYourBusinessRivals
    ?f1<-(asked "asked" "Everday life, eh?" $?answers)
    (answer "Everday life, eh?" "Annihilating your business rivals" )
    =>
    (retract ?f1 )
     (assert (game "game" "Maga Wars"))
)
