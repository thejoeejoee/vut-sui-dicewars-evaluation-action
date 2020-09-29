FROM python:3.8.0

WORKDIR /usr/local/src

COPY . .

RUN git clone https://github.com/ibenes/dicewars.git dicewars && pip install -r dicewars/requirements.txt

ENTRYPOINT ["/usr/local/src/entrypoint.sh"]
