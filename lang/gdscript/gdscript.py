from talon import Context, Module, actions, settings

from ..tags.operators import Operators

mod = Module()
ctx = Context()
ctx.matches = r"""
code.language: gdscript
"""

# ctx.lists["user.code_common_function"] = {
#	 "enumerate": "enumerate",
#	 "integer": "int",
#	 "length": "len",
#	 "list": "list",
#	 "print": "print",
#	 "range": "range",
#	 "set": "set",
#	 "split": "split",
#	 "string": "str",
#	 "update": "update",
# }

@ctx.action_class("user")
class UserActions:
	def code_comment_line_prefix():
		actions.auto_insert("# ")
	
	def code_self():
		actions.auto_insert("self")
	
	def code_operator_object_accessor():
		actions.auto_insert(".")
	
	def code_define_class():
		actions.auto_insert("class ")

	# Unused because no blocking outside of functions
	# def code_block():
	# 	"""Inserts equivalent of {\n} for the active language, and places the cursor appropriately"""

	def code_state_if():
		actions.user.insert_between("if ", ":")

	def code_state_else_if():
		actions.user.insert_between("elif ", ":")

	def code_state_else():
		actions.insert("else:")
		actions.key("enter")

	def code_state_do():
		"""Inserts do statement"""

	def code_state_switch():
		"""Inserts switch statement"""

	def code_state_case():
		"""Inserts case statement"""

	def code_state_for():
		"""Inserts for statement"""

	def code_state_for_each():
		"""Inserts for each equivalent statement"""

	def code_state_go_to():
		"""inserts go-to statement"""

	def code_state_while():
		"""Inserts while statement"""

	def code_state_infinite_loop():
		"""Inserts infinite loop statement"""

	def code_state_return():
		"""Inserts return statement"""

	def code_break():
		"""Inserts break statement"""

	def code_next():
		"""Inserts next/continue statement"""

	def code_try_catch():
		"""Inserts try/catch. If selection is true, does so around the selection"""