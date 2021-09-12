from flaskwebgui import FlaskUI
from real_estate.wsgi import application

ui = FlaskUI(application, start_server="django")
ui.run()
