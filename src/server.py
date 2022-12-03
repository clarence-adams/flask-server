from flask import Flask, request, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

@app.route('/api', methods=['POST'])
def api_test():
    name = request.args.get('name')
    return f'hello {name}'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
