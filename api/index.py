from flask import Flask
import requests


app = Flask(__name__)
BASE_URL = "https://starzone.ragalahari.com/april2018/hd/dikshapanth-stylebazaar-sheetaljain-tajkrishna/dikshapanth-stylebazaar-sheetaljain-tajkrishna10.jpg"

@app.route('/up')
def getData():
    r = requests.get(BASE_URL)
    with app.open_instance_resource('hello.jpg', 'wb') as f:
        f.write(r.content)
