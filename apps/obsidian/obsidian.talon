app: obsidian
-
tag(): user.tabs

header|heading (<user.number_string>):
	count = number_string - 1
	insert("#")
	repeat(count)
	insert(" ")

para|paragraph:
	key(enter)
	repeat(1)

insert para|paragraph:
	key(enter)
	repeat(1)
	key(up)
	repeat(1)



hunt:
	key(ctrl-f)

page (<user.number_string>):
	insert("p. ")
	insert(number_string)
	insert(": ")

bullet|next:
	key(enter)

bullet list:
	key(enter)
	insert("- ")

end list|finish list:
	key(enter)
	repeat(2)

# Open note finder
go note|note|find note:
	key(ctrl-o)

# TODO: how to make this work?
# <number_a> to <number_b> percent:
# 	key(number_a)
# 	insert("-")
# 	key(number_b)
# 	insert("%")


# next book|next work:
# 	key(enter)
# 	repeat(1)
# 	insert("#")
# 	repeat(3)
# 	insert(" ")