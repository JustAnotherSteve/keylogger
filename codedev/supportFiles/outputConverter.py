# converts from the fucked up showkey output to readable text

f=open("words.txt")
text = f.read()
text=text.split("\n")

# deletes intialisers
for i in range(0, 5):
	del text[0]

#deletes final section
del text[len(text)-1]
del text[len(text)-1]

for i in range(0, len(text)):
	text[i] = text[i].split('keycode  ')
	if(len(text[i]) == 2):
		del text[i][0]
	text[i] = text[i][0]
	#del text[i][0]

for i in range(0, len(text)):
	if "keycode " in text[i]:
		text[i] = text[i][8:]

print("This is the text")
print(text)