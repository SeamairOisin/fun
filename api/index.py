from flask import Flask
import requests
import shutil


app = Flask(__name__)
BASE_URL = ""

@app.route('/up')
def getData():
    r = requests.get(BASE_URL, stream = True)
    if r.status_code == 200:
        with open('./images/hello.jpg','wb') as f:
            shutil.copyfileobj(r.raw, f)
