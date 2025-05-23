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

save:
	key(ctrl-s)

feet:
	key(delete)

hunt:
	key(ctrl-f)

# next book|next work:
# 	key(enter)
# 	repeat(1)
# 	insert("#")
# 	repeat(3)
# 	insert(" ")