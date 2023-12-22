import clips

# Tworzenie nowego pliku
clips_file = clips.Environment()
clips_file.load("rules.clp")  # Załaduj reguły z pliku "rules.clp"

# Dodawanie faktów do pliku
clips_file.assert_string("(fakt1)")
clips_file.assert_string("(fakt2)")

# Uruchamianie pliku
clips_file.run()

# Pobieranie wyników
for fact in clips_file.facts():
    print(fact)

# Zamykanie pliku
clips_file.clear()

