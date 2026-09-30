from flask import Flask, jsonify
app = Flask(__name__)

@app.get("/")
def index():
    return jsonify(status="ok", app="m4-t3-secure")

@app.get("/health")
def health():
    return jsonify(status="healthy")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
