os: windows
-
# Search using the start menu
win search <phrase>:
	key(super)
	sleep(250ms)
	insert(phrase)

hotstring|hot string <phrase>:
	insert("]")
	sleep(50ms)
	insert(phrase)

save:
	key(ctrl-s)

em dash:
	insert("—")

en dash:
	insert("–")

plus minus:
	insert("±")

interrobang|question bang:
	insert("‽")