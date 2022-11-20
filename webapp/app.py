'''
app.py
Khizar Qureshi and Kendra Winhall
For Web application: final draft due 21st November 2022
Flask application to support NYC language community web application.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/api/help')
def help():
    with open('api_help.txt', 'r') as file:
        content = file.read()
        
    return flask.Response(content, mimetype='text/plain')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A NYC languages application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
