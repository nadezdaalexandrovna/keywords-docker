# keywords-docker

This repository contains a Docker installation of the KeywordExtractor module callable via http through a flask service.

It allows to quickly test the keywords extraction module that extracts keywords from salto.bz articles in German and Italian.

The keywords extraction module is available at https://github.com/nadezdaalexandrovna/kw-extractor-salto

This is not a production environment.

Steps to follow to quickly test the keywords extraction:

1 Clone the repository:

	```
	git clone https://github.com/nadezdaalexandrovna/keywords-docker.git
	```

2 Go into the folder where the Dockerfile is:

	```
	cd keywords-docker
	```

3 Build the docker:

	```
	docker build --no-cache -t flask-ask .
	```

3 Cun the docker:

	```
	docker run -p 5000:5000 flask-ask:latest
	```

4 Call the flask service via http:

	Open another terminal and run:
	```
 	python call-url.py
 	```

5 See the result:

	Open the file out.txt and see the extracted keywords.