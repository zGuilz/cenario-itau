FROM python:3.6-slim

COPY . /python-test-calculator
WORKDIR /python-test-calculator
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null

RUN ["nohup", "gunicorn", "--bind", "0.0.0.0:8000", "--log-level", "debug", "app:app", "&"]

