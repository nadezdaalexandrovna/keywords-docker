#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 22 11:27:07 2019

@author: nadiushka
"""

import requests, json
import io

st1="""TITLE: DFB Trainingslager: Um Aufklärung bemüht

TEASER: Wer ist Schuld am Unfall der beiden Rennfahrer Pascal Wehrlein und Nico Rosberg. Waren sie zu schnell unterwegs? Wurde die Strecke nicht gut genug gesichert? Oder tragen die Schaulustigen, die am Ende als verletzte Opfer im Krankenhaus landeten, auch eine Verantwortung?

BODY: 
  
    Antworten auf diese Fragen gab es aus dem Passeiertal bereits einige. Noch am Abend des Unfalls, bei dem die beiden Rennfahrer Nico Rosberg und Pascal Wehrlein zwei Personen mit ihren Mercedes-Sportwagen erfassten und verletzten, gab der Passeierer Hotelier und Gemeinderat Heinrich Dorfer eine erste Stellungnahme ab. Es sei alles reglulär und nach bestem Wissen und Gewissen zugegangen, die beiden Piloten seien nicht schnell gefahren, es habe sich "um einen blöden Zufall" gehandelt, sagte Dorfer in der RAI Tagesschau vom 27. Mai. Auf einer heute Mittag einberufenen Pressekonferenz äußerte sich der Trainer des DFB-Teams, Oliver Bierhoff. Er war zusammen mit den beiden Fahrern Rosberg und Wehrlein bereits bei den Verletzten im Krankenhaus gewesen und "dass der DFB eng mit allen Behörden zusammenarbeiten werden, um so rasch wie möglich Aufklärung in den Fall zu bringen." Auch sprach Bierhoff davon, dass diese Art von Werbung grundsätzlich zu überdenken sei.
Auch Bürgermeisterin Rosmarie Pamer möchte nun wieder etwas Ruhe einkehren lassen, nachdem feststeht, dass der 63jährige verletzte Deutsche aus Thüringen außer Lebensgefahr ist. Das Trainingslager der deutschen Nationalelf solle sich unter glücklicheren Umständen fortsetzen. Trotzdem, der schwere Unfall wird in der deutschen Tagespresse gehörig kommentiert. Die Süddeutsche Zeitung titelt etwa "Drama beim Werbe-Dreh des DFB-Teams" und lässt auch die Passeirer Bürgermeisterin in einem Video-Interview zu Wort kommen, in dem sie von einem "schweren Schock" spricht.
Noch größer bringt die deutsche Bild-Zeitung die Story. "Ich hätte tot sein können" zitiert der Reporter den zweiten Verletzten, den Streckenposten Michael Klotz aus Walten. Er liegt mit dem Verdacht auf ein Schädelhirntrauma im Bozner Krankenhaus und wurde von lokalen und deutschen Reportern bereits interviewt. Den Unfallhergang beschreibt er ganz genau. Der deutsche Tourist habe nicht auf der Straße, sonden abseits davon gestanden und wollte ein Foto machen. "Trotzdem habe ich geschrien und bin zu ihm hingelaufen, wollte ihn wegziehen, da war es schon zu spät." Da hatte Nico Rosberg bereits gebremst, offensichtlich durch den Tumult irritiert, und das Auto des hinter ihm fahrenden Pascal Wehrlein hatte die beiden Männer im nächsten Moment zu Boden gerissen. 
Die Carabinieri haben nun die Ermittlungen aufgenommen und bereits Augenzeugen befragt, auch den verletzten Streckenposten, der noch sagte: "Vielleicht hätten sie da nicht ganz so schnell sein müssen, nicht ganz so viel Theater machen sollen. Aber ich weiß es nicht.“

"""
'''
st1={'Title': 'DFB Trainingslager: Um Aufklärung bemüht',

'Teaser': 'Wer ist Schuld am Unfall der beiden Rennfahrer Pascal Wehrlein und Nico Rosberg. Waren sie zu schnell unterwegs? Wurde die Strecke nicht gut genug gesichert? Oder tragen die Schaulustigen, die am Ende als verletzte Opfer im Krankenhaus landeten, auch eine Verantwortung?',

'Body': 'Antworten auf diese Fragen gab es aus dem Passeiertal bereits einige. Noch am Abend des Unfalls, bei dem die beiden Rennfahrer Nico Rosberg und Pascal Wehrlein zwei Personen mit ihren Mercedes-Sportwagen erfassten und verletzten, gab der Passeierer Hotelier und Gemeinderat Heinrich Dorfer eine erste Stellungnahme ab. Es sei alles reglulär und nach bestem Wissen und Gewissen zugegangen, die beiden Piloten seien nicht schnell gefahren, es habe sich "um einen blöden Zufall" gehandelt, sagte Dorfer in der RAI Tagesschau vom 27. Mai. Auf einer heute Mittag einberufenen Pressekonferenz äußerte sich der Trainer des DFB-Teams, Oliver Bierhoff. Er war zusammen mit den beiden Fahrern Rosberg und Wehrlein bereits bei den Verletzten im Krankenhaus gewesen und "dass der DFB eng mit allen Behörden zusammenarbeiten werden, um so rasch wie möglich Aufklärung in den Fall zu bringen." Auch sprach Bierhoff davon, dass diese Art von Werbung grundsätzlich zu überdenken sei. Auch Bürgermeisterin Rosmarie Pamer möchte nun wieder etwas Ruhe einkehren lassen, nachdem feststeht, dass der 63jährige verletzte Deutsche aus Thüringen außer Lebensgefahr ist. Das Trainingslager der deutschen Nationalelf solle sich unter glücklicheren Umständen fortsetzen. Trotzdem, der schwere Unfall wird in der deutschen Tagespresse gehörig kommentiert. Die Süddeutsche Zeitung titelt etwa "Drama beim Werbe-Dreh des DFB-Teams" und lässt auch die Passeirer Bürgermeisterin in einem Video-Interview zu Wort kommen, in dem sie von einem "schweren Schock" spricht. Noch größer bringt die deutsche Bild-Zeitung die Story. "Ich hätte tot sein können" zitiert der Reporter den zweiten Verletzten, den Streckenposten Michael Klotz aus Walten. Er liegt mit dem Verdacht auf ein Schädelhirntrauma im Bozner Krankenhaus und wurde von lokalen und deutschen Reportern bereits interviewt. Den Unfallhergang beschreibt er ganz genau. Der deutsche Tourist habe nicht auf der Straße, sonden abseits davon gestanden und wollte ein Foto machen. "Trotzdem habe ich geschrien und bin zu ihm hingelaufen, wollte ihn wegziehen, da war es schon zu spät." Da hatte Nico Rosberg bereits gebremst, offensichtlich durch den Tumult irritiert, und das Auto des hinter ihm fahrenden Pascal Wehrlein hatte die beiden Männer im nächsten Moment zu Boden gerissen. Die Carabinieri haben nun die Ermittlungen aufgenommen und bereits Augenzeugen befragt, auch den verletzten Streckenposten, der noch sagte: "Vielleicht hätten sie da nicht ganz so schnell sein müssen, nicht ganz so viel Theater machen sollen. Aber ich weiß es nicht."'
}
'''
#input_json = json.dumps( st1, ensure_ascii=False).encode('utf8')


#print(input_json)

r = requests.post("http://127.0.0.1:5000", data={'salto_texts_list': [st1]})
#r = requests.post("http://127.0.0.1:5000", data={'salto_texts_list': [input_json]})
#data = r.json()

outFile = io.open("out.txt", mode="w", encoding="utf-8")
outFile.write(r.text)

#for kw in data["kw"][0]:
	#outFile.write(kw + "\n")

outFile.close()

