#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
@author: Nadezda Okinina
"""

import sys
sys.path.append('/opt/keywords-extractor/keywords')
from keyword_extractor_salto import KeywordExtractor

import os
import logging
import shutil

from flask import Flask
from flask_restful import Resource, Api, reqparse

app = Flask(__name__)
api = Api(app)
parser = reqparse.RequestParser()

#class HelloWorld(Resource):
    #def get(self):
        #return {'hello': 'world'}
        
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

class AskKeywords(Resource):
    def get(self, salto_text):
        return {'st': salto_text}
    """
    def post(self):
        parser.add_argument('salto_text', type=str)
        args = parser.parse_args()
        st = args['salto_text']
        
        
        script_folder, script_name = os.path.split(os.path.abspath(__file__))

        output_folder_name = os.path.abspath(script_folder)
        outputDirectory=os.path.join("/opt/keywords-extractor/keywords/temp_folder_1/")
    
        #tagdir="/opt/keywords-extractor/treetagger/"
    
        #Make the output directory
        #make_output_directory(output_folder_name)
    
        #Make the temporary directory
        make_output_directory(outputDirectory)
    
        logFile = os.path.join(output_folder_name, script_name+".log")
        logging.basicConfig(filename=logFile, level=logging.WARNING)
    
        
        #key_word_extractor = KeywordExtractor(st, outputDirectory, tagdir)
        key_word_extractor = KeywordExtractor(st, outputDirectory)
        key_words_set = key_word_extractor.extract_keywords()
        
        #Remove the directory containing the output files
        shutil.rmtree(outputDirectory)
        
        return {'kw': list(key_words_set)}
    """
    
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
            #print(outputDirectory)
            #print(st)
            #Make the temporary directory
            make_output_directory(outputDirectory)
            st_u8 = st.encode('utf8')
            key_word_extractor = KeywordExtractor(st_u8, outputDirectory)
            key_words_set = key_word_extractor.extract_keywords()
            
            #print(key_words_set)
            
            kw_list.append(list(key_words_set))
            
            #Remove the directory containing the output files
            shutil.rmtree(outputDirectory)
        
        return {'kw': kw_list}


#api.add_resource(AskKeywords, '/<string:salto_text>')
api.add_resource(AskKeywords, '/')

#api.add_resource(AskKeywords, '/', '<string:salto_text>')

#api.add_resource(HelloWorld, '/')


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')