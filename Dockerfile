FROM python:3.12

RUN pip install --no-cache-dir --extra-index-url=https://test.pypi.org/simple/ awesome-lists-generator

COPY ./resources/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]