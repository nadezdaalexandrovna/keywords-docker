# keywords-docker

This repository contains a Docker installation of the KeywordExtractor module callable via http through a flask service.

It allows to quickly test the keywords extraction module that extracts keywords from salto.bz articles in German and Italian.

The keywords extraction module is available at https://github.com/nadezdaalexandrovna/kw-extractor-salto

This is not a production environment.

Steps to follow to quickly test the keywords extraction:

1 cd into the folder where the Dockerfile is

2 docker build --no-cache -t flask-ask .

3 docker run -p 5000:5000 flask-ask:latest

4 Open another terminal and run:
 python call-url.py

5 Open the file out.txt and see the extracted keywords.