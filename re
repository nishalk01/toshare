import re
data   ="A5 #6SheeH69na"
x  = re.compile("^[A-D]\d\s\W\d")   #negation
matches = x.finditer(data)
for match in matches:
    print(match)
