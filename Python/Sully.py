import os
STR = "import os{n}STR = {q}{s}{q}{n}index = {i}{n}if index >= 0:{n}    FD = open({q}Sully_%d.py{q} % index, {q}w{q}){n}    tmp = index - 1{n}    FD.write(STR.format(s=STR, q='{q}', n=chr(10), i=tmp)) and FD.close(){n}    file = {q}Sully_%d.py{q} % index{n}    exec(open(file).read())"
index = 5
if index >= 0:
    FD = open("Sully_%d.py" % index, "w")
    tmp = index - 1
    FD.write(STR.format(s=STR, q='"', n=chr(10), i=tmp)) and FD.close()
    file = "Sully_%d.py" % index
    exec(open(file).read())