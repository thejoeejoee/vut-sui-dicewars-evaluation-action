FROM python:3.8.0

ENTRYPOINT /usr/local/src

COPY ./ /usr/local/src/

RUN git submodule update --init && pip install -r dicewars/requirements.txt

ENTRYPOINT ["/usr/local/src/entrypoint.sh"]
