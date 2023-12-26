import clips

# Tworzenie nowego pliku
clips_file = clips.Environment()
clips_file.load("rules.clp")  # Załaduj reguły z pliku "rules.clp"
clips_file.reset()
# Dodawanie faktów do pliku


# Uruchamianie pliku

clips_file.run()
clips_file.run()
# Pobieranie wyników
def actualquestion():
    for fact in clips_file.facts():
        if list(fact)[0]=="question":
            return list(fact)

    # print(fact)
def printallfacts():
    for fact in clips_file.facts():
        print(fact)
def possibleanswers(fact):
    possibleanswers=[]
    fact=fact[2:]
    for i in range(0,len(fact)):
        if i%2==0:
            possibleanswers.append(fact[i])
    return possibleanswers
        
while True:
    fact=actualquestion()
    print(fact[1])
    print("Possible answers:")
    for possibleanswer in possibleanswers(fact):
        print(possibleanswer)
    t=input("")
    if t=="":
        break
    clips_file.assert_string('(actualanswer "'+t+'")')
    
    clips_file.run()
    
    printallfacts()

clips_file.clear()


