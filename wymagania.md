
# Szczegółowy opis wymagań

## Modularny charakter projektu
- Zachowanie separacji między sterowaniem a wiedzą i danymi przedmiotowymi.
- Dane przedmiotowe nie mogą znaleźć się w warstwie interfejsu.
- Baza wiedzy oddzielona od sterowania.
- System ekspercki podzielony na: interfejs, mechanizm wnioskowania, bazę danych i wiedzy.
- Klasy i typy obiektów przedmiotowych w *.clp, a nie w kodzie interfejsu np. Javy.
- Dodatkowe pliki zasobowe (obrazy, multimedia, dane językowe) zdefiniowane poza kodem interfejsu.
- Naruszenie: utrata 50% punktów.

## Ograniczone wykorzystywanie faktów sterujących
- Stosowanie tylko w uzasadnionych sytuacjach.
- Unikanie nadużywania faktów sterujących.
- Naruszenie: utrata 20% punktów.

## Obecność kontekstu w pytaniach/dialogu
- Dialog odzwierciedlający proces wnioskowania.
- Wykorzystanie zgromadzonych informacji.
- Reguły generujące pytania powinny korzystać z faktów przedmiotowych.
- Naruszenie: utrata 20% punktów.

## Spójność i konsekwencja w reprezentacji danych przedmiotowych
- Fakty nie zmieniają postaci w trakcie przetwarzania.
- Czytelne nazwy obiektów w bazie wiedzy.
- Zachowanie typu danych (symboliczne, numeryczne, itd.).
- Naruszenie: utrata 20% punktów.

## Decyzje przedmiotowe tylko w warunkach reguł
- Dane przedmiotowe sprawdzane tylko w części warunkowej reguł.
- Nie stosować instrukcji warunkowych w części wykonawczej reguł.
- Naruszenie: utrata 50% punktów.

## Rozwiązania końcowe to nie statyczne dane
- Rozwiązania konstruowane w trakcie wnioskowania.
- Unikanie reprezentacji rozwiązań w postaci statycznych faktów.
- Naruszenie: projekt do poprawy.

## Właściwa i naturalna forma wyboru odpowiedzi przez użytkownika
- Forma odpowiedzi zgodna z naturą pytania.
- Opcje jednokrotnego i wielokrotnego wyboru.
- Unikanie rozwijanych list, chyba że uzasadnione.
- Naruszenie: utrata 20% punktów.

## Czas i forma prezentacji projektu
- Czas realizacji: 2 tygodnie.
- Każdy tydzień spóźnienia: utrata 25% punktów.
- Forma prezentacji: projekt jako archiwum ZIP lub link do repozytorium.

## Tematyka zakazana
- Szeroko rozumiana Informatyka.
