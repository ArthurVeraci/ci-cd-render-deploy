from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Aplicação Flask - v2: BY: Arthur Veraci"
