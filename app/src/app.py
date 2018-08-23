from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello World from Container!</h1>'

@app.route('/ws')
def rest_hello_world():
    return '{"id":1,"message":"I <3 WS"}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
