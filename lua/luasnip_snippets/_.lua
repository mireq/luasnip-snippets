-- Generated using ultisnips_to_luasnip.py

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key
local su = require("luasnip_snippets.snip_utils")
local cp = su.copy
local tr = su.transform
local jt = su.join_text
local nl = su.new_line
local te = su.trig_engine
local ae = su.args_expand
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


local am = { -- argument mapping: token index to placeholder number
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	2,
	2,
	2,
	2,
	0,
	2,
	3,
	3,
	2,
	2,
	2,
	0,
	0,
	2,
	2,
}
ls.add_snippets("_", {
	s({trig = "c)", descr = "(c))", priority = -1000, trigEngine = te("w")}, {
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[1])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[1])), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i1"}) }) end), t". All Rights Reserved."
	}),
	s({trig = "date", descr = "(date)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d\")") end, ae(am[2]))
	}),
	s({trig = "ddate", descr = "(ddate)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%B %d, %Y\")") end, ae(am[3]))
	}),
	s({trig = "diso", descr = "(diso)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%dT%H:%M:%S\")") end, ae(am[4]))
	}),
	s({trig = "time", descr = "(time)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%H:%M\")") end, ae(am[5]))
	}),
	s({trig = "datetime", descr = "(datetime)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d %H:%M\")") end, ae(am[6]))
	}),
	s({trig = "lorem", descr = "(lorem)", priority = -1000, trigEngine = te("w")}, {
		t"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	}),
	s({trig = "GPL2", descr = "(GPL2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "One line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[8])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[8])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This program is free software; you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU General Public License as published by", nl(),
		t"the Free Software Foundation; either version 2 of the License, or", nl(),
		t"(at your option) any later version.", nl(),
		nl(),
		t"This program is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the", nl(),
		t"GNU General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU General Public License", nl(),
		t"along with this program; if not, see <http://www.gnu.org/licenses/>.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "LGPL2", descr = "(LGPL2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "One line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[9])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[9])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This library is free software; you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU Lesser General Public License as published", nl(),
		t"by the Free Software Foundation; either version 2.1 of the License, or", nl(),
		t"(at your option) any later version.", nl(),
		nl(),
		t"This library is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the", nl(),
		t"GNU Lesser General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU Lesser General Public License", nl(),
		t"along with this library; if not, see <http://www.gnu.org/licenses/>.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "GPL3", descr = "(GPL3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[10])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[10])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This program is free software: you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU General Public License as published by", nl(),
		t"the Free Software Foundation, either version 3 of the License, or", nl(),
		t"(at your option) any later version.", nl(),
		nl(),
		t"This program is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the", nl(),
		t"GNU General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU General Public License", nl(),
		t"along with this program.  If not, see <http://www.gnu.org/licenses/>.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "LGPL3", descr = "(LGPL3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "One line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[11])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[11])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This library is free software; you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU Lesser General Public License as published", nl(),
		t"by the Free Software Foundation; either version 3 of the License, or", nl(),
		t"(at your option) any later version.", nl(),
		nl(),
		t"This library is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the", nl(),
		t"GNU Lesser General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU Lesser General Public License", nl(),
		t"along with this library; if not, see <http://www.gnu.org/licenses/>.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "AGPL3", descr = "(AGPL3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[12])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[12])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This program is free software: you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU Affero General Public License as", nl(),
		t"published by the Free Software Foundation, either version 3 of the", nl(),
		t"License, or (at your option) any later version.", nl(),
		nl(),
		t"This program is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the", nl(),
		t"GNU Affero General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU Affero General Public License", nl(),
		t"along with this program.  If not, see <http://www.gnu.org/licenses/>.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "GMGPL", descr = "(GMGPL) linking exception", priority = -1000, trigEngine = te("w")}, {
		t"As a special exception, if other files instantiate generics from", nl(),
		t"this unit, or you link this unit with other files to produce an", nl(),
		t"executable, this unit does not by itself cause the resulting", nl(),
		t"executable to be covered by the GNU General Public License.", nl(),
		t"This exception does not however invalidate any other reasons why the", nl(),
		t"executable file might be covered by the GNU Public License.", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "BSD2", descr = "(BSD2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[14])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[14])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"All rights reserved.", nl(),
		nl(),
		t"Redistribution and use in source and binary forms, with or without", nl(),
		t"modification, are permitted provided that the following conditions are met:", nl(),
		t"1. Redistributions of source code must retain the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer.", nl(),
		t"2. Redistributions in binary form must reproduce the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer in the", nl(),
		t"documentation and/or other materials provided with the distribution.", nl(),
		nl(),
		t"THIS SOFTWARE IS PROVIDED BY ", cp(2), t" \'\'AS IS\'\' AND ANY", nl(),
		t"EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED", nl(),
		t"WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE", nl(),
		t"DISCLAIMED. IN NO EVENT SHALL ", cp(2), t" BE LIABLE FOR ANY", nl(),
		t"DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES", nl(),
		t"(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;", nl(),
		t"LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND", nl(),
		t"ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT", nl(),
		t"(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS", nl(),
		t"SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.", nl(),
		nl(),
		t"The views and conclusions contained in the software and documentation", nl(),
		t"are those of the authors and should not be interpreted as representing", nl(),
		t"official policies, either expressed or implied, of ", cp(2), t".", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "BSD3", descr = "(BSD3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[15])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[15])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"All rights reserved.", nl(),
		nl(),
		t"Redistribution and use in source and binary forms, with or without", nl(),
		t"modification, are permitted provided that the following conditions are met:", nl(),
		t"1. Redistributions of source code must retain the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer.", nl(),
		t"2. Redistributions in binary form must reproduce the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer in the", nl(),
		t"documentation and/or other materials provided with the distribution.", nl(),
		t"3. Neither the name of the ", i(3, "organization", {key = "i3"}), t" nor the", nl(),
		t"names of its contributors may be used to endorse or promote products", nl(),
		t"derived from this software without specific prior written permission.", nl(),
		nl(),
		t"THIS SOFTWARE IS PROVIDED BY ", cp(2), t" \'\'AS IS\'\' AND ANY", nl(),
		t"EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED", nl(),
		t"WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE", nl(),
		t"DISCLAIMED. IN NO EVENT SHALL ", cp(2), t" BE LIABLE FOR ANY", nl(),
		t"DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES", nl(),
		t"(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;", nl(),
		t"LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND", nl(),
		t"ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT", nl(),
		t"(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS", nl(),
		t"SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "BSD4", descr = "(BSD4)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[16])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[16])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"All rights reserved.", nl(),
		nl(),
		t"Redistribution and use in source and binary forms, with or without", nl(),
		t"modification, are permitted provided that the following conditions are met:", nl(),
		t"1. Redistributions of source code must retain the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer.", nl(),
		t"2. Redistributions in binary form must reproduce the above copyright", nl(),
		t"notice, this list of conditions and the following disclaimer in the", nl(),
		t"documentation and/or other materials provided with the distribution.", nl(),
		t"3. All advertising materials mentioning features or use of this software", nl(),
		t"must display the following acknowledgement:", nl(),
		t"This product includes software developed by the ", i(3, "organization", {key = "i3"}), t".", nl(),
		t"4. Neither the name of the ", cp(3), t" nor the", nl(),
		t"names of its contributors may be used to endorse or promote products", nl(),
		t"derived from this software without specific prior written permission.", nl(),
		nl(),
		t"THIS SOFTWARE IS PROVIDED BY ", cp(2), t" \'\'AS IS\'\' AND ANY", nl(),
		t"EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED", nl(),
		t"WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE", nl(),
		t"DISCLAIMED. IN NO EVENT SHALL ", cp(2), t" BE LIABLE FOR ANY", nl(),
		t"DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES", nl(),
		t"(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;", nl(),
		t"LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND", nl(),
		t"ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT", nl(),
		t"(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS", nl(),
		t"SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "MIT", descr = "(MIT)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[17])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[17])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"Permission is hereby granted, free of charge, to any person obtaining", nl(),
		t"a copy of this software and associated documentation files (the \"Software\"),", nl(),
		t"to deal in the Software without restriction, including without limitation", nl(),
		t"the rights to use, copy, modify, merge, publish, distribute, sublicense,", nl(),
		t"and/or sell copies of the Software, and to permit persons to whom the", nl(),
		t"Software is furnished to do so, subject to the following conditions:", nl(),
		nl(),
		t"The above copyright notice and this permission notice shall be included", nl(),
		t"in all copies or substantial portions of the Software.", nl(),
		nl(),
		t"THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,", nl(),
		t"EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES", nl(),
		t"OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.", nl(),
		t"IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,", nl(),
		t"DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,", nl(),
		t"TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE", nl(),
		t"OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "APACHE", descr = "(APACHE)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[18])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"Licensed under the Apache License, Version 2.0 (the \"License\");", nl(),
		t"you may not use this file except in compliance with the License.", nl(),
		t"You may obtain a copy of the License at", nl(),
		nl(),
		t"\thttp://www.apache.org/licenses/LICENSE-2.0", nl(),
		nl(),
		t"Unless required by applicable law or agreed to in writing, software", nl(),
		t"distributed under the License is distributed on an \"AS IS\" BASIS,", nl(),
		t"WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.", nl(),
		t"See the License for the specific language governing permissions and", nl(),
		t"limitations under the License.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "BEERWARE", descr = "(BEERWARE)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[19])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"Licensed under the \"THE BEER-WARE LICENSE\" (Revision 42):", nl(),
		cp(2), t" wrote this file. As long as you retain this notice you", nl(),
		t"can do whatever you want with this stuff. If we meet some day, and you think", nl(),
		t"this stuff is worth it, you can buy me a beer or coffee in return", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "WTFPL", descr = "(WTFPL)", priority = -1000, trigEngine = te("w")}, {
		t"\t\tDO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE", nl(),
		t"\t\t\t\tVersion 2, December 2004", nl(),
		nl(),
		t"Copyright ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[20])), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i1"}) }) end), nl(),
		nl(),
		t"Everyone is permitted to copy and distribute verbatim or modified", nl(),
		t"copies of this license document, and changing it is allowed as long", nl(),
		t"as the name is changed.", nl(),
		nl(),
		t"\t\tDO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE", nl(),
		t"TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION", nl(),
		nl(),
		t" 0. You just DO WHAT THE FUCK YOU WANT TO.", nl(),
		nl(),
		cp(0)
	}),
	s({trig = "MPL2", descr = "(MPL2)", priority = -1000, trigEngine = te("w")}, {
		t"This Source Code Form is subject to the terms of the Mozilla Public", nl(),
		t"License, v. 2.0. If a copy of the MPL was not distributed with this", nl(),
		t"file, You can obtain one at http://mozilla.org/MPL/2.0/.", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "AGPL", descr = "(AGPL)", priority = -1000, trigEngine = te("w")}, {
		i(1, "One line to give the program\'s name and a brief description.", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[22])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[22])), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"This program  is free software: you can redistribute it and/or modify", nl(),
		t"it under the terms of the GNU Affero General Public License as", nl(),
		t"published by the Free Software Foundation, either version 3 of the", nl(),
		t"License, or (at your option) any later version.", nl(),
		nl(),
		t"This program is distributed in the hope that it will be useful,", nl(),
		t"but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the", nl(),
		t"GNU Affero General Public License for more details.", nl(),
		nl(),
		t"You should have received a copy of the GNU Affero General Public License", nl(),
		t"along with this program. If not, see <http://www.gnu.org/licenses/>."
	}),
	s({trig = "ISC", descr = "(ISC)", priority = -1000, trigEngine = te("w")}, {
		i(1, "one line to give the program\'s name and a brief description", {key = "i1"}), nl(),
		t"Copyright ", f(function(args, snip) return c_viml("&enc[:2] == \"utf\" ? \"©\" : \"(c)\"") end, ae(am[23])), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, ae(am[23])), t", ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		t"Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.", nl(),
		nl(),
		t"THE SOFTWARE IS PROVIDED \"AS IS\" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.", nl(),
		i(0, "", {key = "i0"})
	}),
})
