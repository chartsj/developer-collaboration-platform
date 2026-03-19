from flask import Flask, request
import os
import psycopg2

app = Flask(__name__)


def get_db_connection():
    conn = psycopg2.connect(host='localhost', database='git_project',user='postgres', password = 'charl')
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT * FROM issues;')
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return rows

@app.route('/kik')
def jko():
    return {"message":"ok"}

@app.route("/hi")
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