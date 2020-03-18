#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 22 11:27:07 2019

@author: nadezda okinina

This script allows to quickly test the KeywordExtractor module through a Docker interface.

This script reads an example file, fires a post request to the Docker flask service and prints the response containing keywords to a file.
"""

import requests
import io


inFile = io.open("salto-texts/21986.txt", mode="r", encoding="utf-8")
st1 = inFile.read()

inFile.close()


r = requests.post("http://127.0.0.1:5000", data={'salto_texts_list': [st1]})
data = r.json()

outFile = io.open("out.txt", mode="w", encoding="utf-8")
for kw in data["kw"][0]:
	outFile.write(kw + "\n")

outFile.close()

