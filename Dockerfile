FROM python:3.8.0

COPY ./evaluate.py /evaluate.py

COPY ./entrypoint.sh /entrypoint.sh

RUN git clone https://github.com/ibenes/dicewars.git /dicewars && pip install -r /dicewars/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
