from flask import Flask, render_template, jsonify
from config import settings  
app = Flask(__name__, template_folder="templates")
app.config.from_object(settings)  
app.config['PROPAGATE_EXCEPTIONS'] = True

@app.route('/')
def render_index():
    return render_template('index.html')

@app.route('/api')
def api():
    return jsonify(
        {
            "id": "90",
            "first_name": "Hyper",
            "last_name": "Skill",
        }
    )



# Error handling
@app.errorhandler(404)
def page_not_found(e):
    return jsonify(error=str(e)), 404

@app.errorhandler(500)
def internal_server_error(e):
    return jsonify(error=str(e)), 500

if __name__ == '__main__':
    app.run(host="127.0.0.1", port=3000, debug=settings.DEBUG)