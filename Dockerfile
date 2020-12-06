FROM python:3.6-slim



RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

RUN ["gunicorn", "--bind", "0.0.0.0:8000", "app.py"]
