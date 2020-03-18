FROM ubuntu:16.04
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

MAINTAINER Nadezda Okinina "nadezda.okinina@eurac.edu"

# install git and python3 with pip, libpcre3 libpcre3-dev needed by uwsgi
RUN apt-get update -y && apt-get install -y nano git python3-pip libpcre3 libpcre3-dev

# make the working directory
RUN mkdir /opt/keywords-extractor
WORKDIR /opt/keywords-extractor

# get treetagger source and example salto articles from git
RUN git clone https://github.com/nadezdaalexandrovna/keywords-docker /opt/keywords-extractor

# install treetagger
RUN sh /opt/keywords-extractor/treetagger/install-tagger.sh

# install python libraries
RUN pip3 install -r /opt/keywords-extractor/requirements.txt

# get the keyword extraction script and its dependencies from git
RUN git clone https://github.com/nadezdaalexandrovna/kw-extractor-salto /opt/keywords-extractor/keywords

# set the environment variable used by the Python module treetaggerwrapper 
ENV TAGDIR="/opt/keywords-extractor/treetagger/"

# run the tests of the keywords extractor script
#RUN python3 /opt/keywords-extractor/keywords/keyword_extractor_test.py

ENTRYPOINT ["python3"]

CMD ["app.py"]
