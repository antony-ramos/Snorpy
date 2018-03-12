# Snorpy
Snorpy is a simple Snort rule creator / builder / maker made originally with python but chrisjd20 made the most recent version with Node and jquery. I made a docker image with the work of chrisjd20.

This sample can be seen at <a href="http://snorpy.com">Snorpy.com</a>

#Install

Download repo
docker build -t snorpy-docker .
docker run -p 4000:80 snorpy-docker

Should be that easy.
