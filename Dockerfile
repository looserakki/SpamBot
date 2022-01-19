
FROM python:3.10.1-slim-buster

RUN apt-get update -y && apt-get upgrade -y 
RUN pip3 install --upgrade pip setuptools

# Docker work bsdk


COPY ./spambot/sample_config.py ./spambot/config.py* /root/spambot/spambot/


# Install requirements
RUN pip3 install --no-cache-dir -U -r requirements.txt

ENV PIP_NO_CACHE_DIR 1

# Bolo jai Ramji ki , Shero wali mata ki jai , Namo namo parvati pate har har mahadev

CMD ["python3","-m","spambot"]
