STR = "STR = {q}{s}{q}{n}FD = open({q}Grace_kid.py{q}, {q}w{q}){n}MAIN = lambda:FD.write(STR.format(s=STR, n=chr(10), q='{q}')) and FD.close(){n}MAIN(){n}#Carrot"
FD = open("Grace_kid.py", "w")
MAIN = lambda:FD.write(STR.format(s=STR, n=chr(10), q='"')) and FD.close()
MAIN()
#Carrot