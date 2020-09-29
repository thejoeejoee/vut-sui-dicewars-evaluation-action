FROM python:3.8.0-alpine

COPY entrypoint.sh /entrypoint.sh

COPY dicewars /dicewars

RUN pip install -r /dicewars/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
