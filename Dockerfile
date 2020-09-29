FROM python:3.8.0

WORKDIR /usr/local/src

COPY . .

RUN ls .

RUN git clone https://github.com/ibenes/dicewars.git /usr/local/src/dicewars

RUN ls .

RUN ls /usr/local/src/dicewars

RUN pip install -r dicewars/requirements.txt

ENTRYPOINT ["/usr/local/src/entrypoint.sh"]
