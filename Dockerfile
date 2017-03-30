 FROM python:2.7
 ENV PYTHONUNBUFFERED 1
 WORKDIR /bedrockstone_v2
 ADD requirements.txt /bedrockstone_v2/
 RUN pip install -r requirements.txt
 ADD . /bedrockstone_v2/