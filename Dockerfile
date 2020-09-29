FROM python:3.8.0

ENTRYPOINT /usr/local/src

COPY ./ /usr/local/src/

RUN git clone https://github.com/ibenes/dicewars.git /usr/local/src/dicewars && pip install -r dicewars/requirements.txt

ENTRYPOINT ["/usr/local/src/entrypoint.sh"]
