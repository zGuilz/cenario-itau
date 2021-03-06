from flask import Flask, request, jsonify


class Teste:
    def teste(nome):
        if nome == "API":
            return "OK"
        return "TESTADO PIPELINE!"


app = Flask(__name__)

@app.route('/')
def hello_world():
    nome = request.args.get("nome")
    return Teste.teste(nome)


if __name__ == "__main__":
    app.run()
