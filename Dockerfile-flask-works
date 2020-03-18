FROM ubuntu:16.04

MAINTAINER Nadezda Okinina "nadezda.okinina@eurac.edu"

# install git and python3 with pip, libpcre3 libpcre3-dev needed by uwsgi
RUN apt-get update -y && apt-get install -y nano git python3-pip libpcre3 libpcre3-dev

# make the working directory
RUN mkdir /opt/keywords-extractor
WORKDIR /opt/keywords-extractor

# get treetagger source and example salto articles from git
RUN git clone https://github.com/commul/keywords-docker /opt/keywords-extractor

# install treetagger
RUN sh /opt/keywords-extractor/treetagger/install-tagger.sh

# install python libraries
#RUN pip3 install argparse pprint treetaggerwrapper editdistance segtok langdetect regex typing requests
RUN pip3 install -r /opt/keywords-extractor/requirements.txt

# install nginx and uwsgi
#RUN apt-get install -y nginx
#RUN pip3 install -U uwsgi
#COPY nginx.conf /etc/nginx/sites-available/keywords-extractor
#RUN rm /etc/nginx/sites-enabled/default
#RUN ln -s /etc/nginx/sites-available/keywords-extractor /etc/nginx/sites-enabled/keywords-extractor


# get the keyword extraction script and its dependencies from git
RUN git clone https://github.com/commul/salto-keywords /opt/keywords-extractor/keywords

# set the environment variable used by the Python module treetaggerwrapper 
ENV TAGDIR="/opt/keywords-extractor/treetagger/"

# run the tests of the keywords extractor script
#RUN python3 /opt/keywords-extractor/keywords/keyword_extractor_test.py

ENTRYPOINT ["python3"]

CMD ["app.py"]

#RUN uwsgi --socket 127.0.0.1:3031 --wsgi-file /opt/keywords-extractor/app.py --callable app --master --processes 4 --threads 2 --stats 127.0.0.1:9191

#RUN uwsgi --socket 127.0.0.1:3031 --wsgi-file /opt/keywords-extractor/app.py --callable app --processes 4 --threads 2 --stats 127.0.0.1:9191