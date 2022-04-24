from flask import Flask
import requests


app = Flask(__name__)
BASE_URL = ""

@app.route('/up')
def getData():
    r = requests.get(BASE_URL)
    with app.open_instance_resource('hello.jpg', 'wb') as f:
        f.write(r.content)
