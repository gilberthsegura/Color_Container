import os
import socket
from flask import Flask, render_template

app = Flask(__name__,template_folder="template")

color = os.environ.get("BGCOLOR")
node = socket.gethostname()

# a simple page that paint its background
@app.route('/')
def main():
    return render_template("index.html", color=color, node=node)
