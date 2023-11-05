# Flask server
My first flask server

# Steps for local development:
## Docker (recommended)
```docker
docker build -t flask_server
docker run -d -p 5000:5000 flask_server
```

## Python
```python
python -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
python src/server.py
```

When you are done developing run ``deactivate`` to exit your virtual environment and save your dependencies

