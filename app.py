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
for fact in clips_file.facts():
    print(fact)
while True:
    t=input("Press Enter to continue...")
    if t=="":
        break
    clips_file.assert_fact("actualanswer {t}")
    clips_file.run()
# Zamykanie pliku
clips_file.clear()

