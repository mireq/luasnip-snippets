# -*- coding: utf-8 -*-
import tomllib
from pathlib import Path


class Configuration:
	def __init__(self, filetype: str):
		config = {}
		try:
			with Path(__file__).parent.parent.joinpath('configuration.toml').open('rb') as fp:
				config = tomllib.load(fp)
		except FileNotFoundError:
			pass

		self.excluded_snippets: set[str] = set(config.get(filetype, {}).get('excluded_snippets', []))
		self.additional_extends: list[str] = list(config.get(filetype, {}).get('additional_extends', []))

	def __str__(self):
		return f'additional_extends: {self.additional_extends!r}, exclude: {self.excluded_snippets!r}'
