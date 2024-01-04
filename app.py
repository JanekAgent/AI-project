import clips
from flask import Flask, render_template, request
app = Flask(__name__)
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
    actualquestion=""
    for fact in clips_file.facts():
        if list(fact)[0]=="asked":
            actualquestion=fact[1]
            break
    if actualquestion=="":
        return "",False
    return fact,True

def decisionofgame():
    decision=""
    for fact in clips_file.facts():
        if list(fact)[0]=="game":
            decision=fact[1]
            break
    if decision=="":
        return "",False
    return fact,True

def printallfacts():
    for fact in clips_file.facts():
        print(fact)

def possibleanswers(fact):
    possibleanswers=[]
    fact=fact[2:]
    for i in range(len(fact)):
        possibleanswers.append(fact[i])
    return possibleanswers



@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        fact = actualquestion()
        
    
        
        if fact[1] == False:
            game=decisionofgame()
            if game[1]==False:
                return "Error"
            else:
                return render_template('game.html', game=game[0][1])
        fact=fact[0]
        
        return render_template('index.html', fact=fact[1],questions=possibleanswers(fact))
    if request.method == 'POST':
        t = request.form.get('answer')
        if not t:
            fact = actualquestion()
        
    
        
            if fact[1] == False:
                game=decisionofgame()
                if game[1]==False:
                    return "Error"
                else:
                    return render_template('game.html', game=game[0][1])
            fact=fact[0]
        
            return render_template('index.html', fact=fact[1],questions=possibleanswers(fact))
        fact = actualquestion()
        if fact[1] == False:
            game=decisionofgame()
            if game[1]==False:
                return "Error"
            else:
                return render_template('game.html', game=game[0][1])
        fact=fact[0]
        
        clips_file.assert_string('(answer "'+fact[1]+'" "'+t+'")')
        clips_file.run()
        clips_file.run()
        fact = actualquestion()
        if fact[1] == False:
            game=decisionofgame()
            if game[1]==False:
                return "Error"
            else:
                return render_template('game.html', game=game[0][1])
        fact=fact[0]
        return render_template('index.html', fact=fact[1],questions=possibleanswers(fact))
    
        

if __name__ == '__main__':
    app.run()
clips_file.clear()


