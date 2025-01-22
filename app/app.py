from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return f"K8S CI/CD Working! Pod: {os.environ.get('HOSTNAME', 'unknown')}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
