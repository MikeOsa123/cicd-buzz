from flask import render_template
from app import app

from buzz import generator

@app.route("/")
def generate_buzz():
    """generate flask wrapper"""

    message = generator.generate_buzz()

    return render_template('index.html', title='CI/CD Buzz Generator', message=message)