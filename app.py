#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
@author: Nadezda Okinina

This script allows to quickly test the KeywordExtractor module.

The script recieves a post request containing Salto articles, calls the KeywordExtractor module for each of them and sends back a list of keywords per article.
"""

import sys
sys.path.append('/opt/keywords-extractor/keywords')
from keyword_extractor_salto import KeywordExtractor

import os, logging, shutil

from flask import Flask
from flask_restful import Resource, Api, reqparse

app = Flask(__name__)
api = Api(app)
parser = reqparse.RequestParser()

        
def make_output_directory(folder: str) -> None:
    """
    Create a directory.
    """
    try:
        if not os.path.exists(folder):
            os.makedirs(folder)
        else:
            logging.warning("\nFolder "+folder+" already exists.\n")
    except Exception as e:
        logging.warning("\nCould not create folder "+folder+" due to the following error:\n")
        logging.warning(e)

    
    def post(self):
        parser.add_argument('salto_texts_list', action='append')
        args = parser.parse_args()
        st_texts_list = args['salto_texts_list']
        kw_list = []
        
        script_folder, script_name = os.path.split(os.path.abspath(__file__))

        output_folder_name = os.path.abspath(script_folder)
        
        logFile = os.path.join(output_folder_name, script_name+".log")
        logging.basicConfig(filename=logFile, level=logging.WARNING)
        
        text_number = 0
        for st in st_texts_list:
            text_number += 1
            outputDirectory=os.path.join("/opt/keywords-extractor/keywords/", "temp_folder_" + str(text_number))

            make_output_directory(outputDirectory)
            st_u8 = st.encode('utf8')
            key_word_extractor = KeywordExtractor(st_u8, outputDirectory)
            key_words_set = key_word_extractor.extract_keywords()
            
            kw_list.append(list(key_words_set))
            
            #Remove the directory containing the output files
            shutil.rmtree(outputDirectory)
        
        return {'kw': kw_list}


api.add_resource(AskKeywords, '/')



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')