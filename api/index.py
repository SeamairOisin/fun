from flask import Flask
import requests
import shutil


app = Flask(__name__)
BASE_URL = "https://starzone.ragalahari.com/april2018/hd/dikshapanth-stylebazaar-sheetaljain-tajkrishna/dikshapanth-stylebazaar-sheetaljain-tajkrishna10.jpg"

@app.route('/up')
def getData():
    r = requests.get(BASE_URL, stream = True)
    if r.status_code == 200:
        with open('hello.jpg','wb') as f:
            shutil.copyfileobj(r.raw, f)
