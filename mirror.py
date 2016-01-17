from flask import Flask
from flask import render_template
from flask import request, jsonify
import datetime

app = Flask(__name__)

@app.route('/')
def index():
    time = datetime.datetime.now().time()
    return jsonify(time=str(time))

if __name__ == '__main__':
  app.debug = True
  app.run()
