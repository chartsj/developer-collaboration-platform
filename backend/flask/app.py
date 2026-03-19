from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/hello")
def accept_userinput():
    name = request.args.get("name","Flask")
    return f"Hello,<b> {name}</b>"

@app.route("/test/<username>")
def tes(username):
    #name = request.args.get("name","Flask")
    return f"Hello,<b> {username}</b>"