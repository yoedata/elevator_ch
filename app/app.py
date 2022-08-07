from typing import List, Dict
import mysql.connector
import simplejson from json
from flask import Flask, Response

app = Flask(__name__)

def elevators_import() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '4000',
        'database': 'elevatorsData'
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.curstor(dictionary=True)

    cursor.execute('SELECT * FROM tblElevatorImport')
    result = cursor.fetchall() 

    cursor.close()
    connection.close()

    return result


@app.route('/')
def index() -> str:
    js = json.dumps(elevators_import())
    resp = Response(js, status=200, mimetype='application/json')

if __name__ == '__main__':
    app.run(host='0.0.0.0')