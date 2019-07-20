#!/usr/bin/python
f=open("youWon.txt", "w+")
for i in range(10):
    f.write("This is line %d\r\n" % (i+1))
f.close()




#workign for bash, but not python