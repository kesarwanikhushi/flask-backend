from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/api')
def hello():
    return jsonify({"message": "Hello from Flask!"})

if __name__ == '__main__':
    PORT = int(os.environ.get("PORT", 5000))  # ← this line is the fix
    app.run(host='0.0.0.0', port=PORT)
