# -*- coding: utf-8 -*-
import typing


class SnippetDefinition:
	def __init__(
		self,
		priority: int,
		trigger: str,
		value: str,
		description: str,
		options: str,
		global_code: dict[str, str],
		location: str,
		context: typing.Any,
		actions: dict[str, str]
	):
		self.priority = priority
		self.trigger = trigger
		self.value = value
		self.description = description
		self.options = options
		self.global_code = global_code
		self.location = location
		self.context = context
		self.actions = actions


class SnipMateSnippetDefinition(SnippetDefinition):
	SNIPMATE_SNIPPET_PRIORITY = -1000

	def __init__(
		self,
		trigger: str,
		value: str,
		description: str,
		location: str,
	):
		super().__init__(
			self.SNIPMATE_SNIPPET_PRIORITY,
			trigger,
			value,
			description,
			"w",
			{},
			location,
			None,
			{},
		)


class UltiSnipsSnippetDefinition(SnippetDefinition):
	pass
