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
local su = require("luasnip_snippets.common.snip_utils")
local cp = su.copy
local tr = su.transform
local rx_tr = su.regex_transform
local jt = su.join_text
local nl = su.new_line
local te = su.trig_engine
local ae = su.args_expand
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


local am = { -- argument mapping: token index to placeholder number
	{0, 1, 2, 3, 4},
	{1},
	{0, 1, 2, 3, 4},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3},
	{1},
	{1, 2, 3},
	{3},
	{1, 2},
	{2},
	{1, 2},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
}
ls.add_snippets("php-symfony2", {
	s({trig = "classn", descr = "(classn) \"Basic class with namespace snippet\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 1}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[1]) end, ae(am[1])), t";", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i1"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 1}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[1]) end, ae(am[1])), i(2, "", {key = "i2"}), nl(),
		t"{", nl(),
		t"    public function __construct(", i(3, "$options", {key = "i3"}), t")", nl(),
		t"    {", nl(),
		t"        ", i(4, "// code", {key = "i4"}), nl(),
		t"    }", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "contr", descr = "(contr) \"Symfony2 controller\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 2}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[2]) end, ae(am[2])), t";", nl(),
		nl(),
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Method;", nl(),
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Route;", nl(),
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Template;", nl(),
		t"use Symfony\\Bundle\\FrameworkBundle\\Controller\\Controller;", nl(),
		t"use Symfony\\Component\\HttpFoundation\\Request;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i1"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 2}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[2]) end, ae(am[2])), t" extends Controller", nl(),
		t"{", nl(),
		t"}"
	}),
	s({trig = "sfa", descr = "(sfa) \"Symfony 2 Controller action\"", priority = -50, trigEngine = te("")}, {
		t"/**", nl(),
		t"* @Route(\"/", i(1, "route_name", {key = "i1"}), t"\", name=\"", cp(1), t"\")", nl(),
		t"* @Template()", nl(),
		t"*/", nl(),
		t"public function ", cp(1), t"Action(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"\treturn ", i(4, "[];", {key = "i4"}), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "act", descr = "(act) \"Symfony2 action\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * @Route(\"", i(3, "", {key = "i3"}), t"\", name=\"", i(4, "", {key = "i4"}), t"\")", nl(),
		t" * @Method({", i(5, "\"POST\"", {key = "i5"}), t"})", nl(),
		t" * @Template()", nl(),
		t" */", nl(),
		t"public function ", i(1, "", {key = "i1"}), t"Action(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "actt", descr = "(actt) \"Symfony2 action and template\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * @Route(\"", i(3, "", {key = "i3"}), t"\", name=\"", i(4, "", {key = "i4"}), t"\")", nl(),
		t" * @Method({", i(5, "\"GET\"", {key = "i5"}), t"})", nl(),
		t" * @Template()", nl(),
		t" */", nl(),
		t"public function ", i(1, "", {key = "i1"}), t"Action(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(6, "", {key = "i6"}), nl(),
		t"\treturn [];", nl(),
		t"}", f(function(args, snip) return c_py({"php-symfony2", 5}, "\nrelpath = os.path.relpath(path)", python_globals, args, snip, "", am[5]) end, ae(am[5]))
	}),
	s({trig = "comm", descr = "(comm) \"Symfony2 command\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 6}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[6]) end, ae(am[6])), t";", nl(),
		nl(),
		t"use Symfony\\Bundle\\FrameworkBundle\\Command\\ContainerAwareCommand;", nl(),
		t"use Symfony\\Component\\Console\\Input\\InputArgument;", nl(),
		t"use Symfony\\Component\\Console\\Input\\InputOption;", nl(),
		t"use Symfony\\Component\\Console\\Input\\InputInterface;", nl(),
		t"use Symfony\\Component\\Console\\Output\\OutputInterface;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(3, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 6}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[6]) end, ae(am[6])), t" extends ContainerAwareCommand", nl(),
		t"{", nl(),
		t"\tprotected function configure()", nl(),
		t"\t{", nl(),
		t"\t\t$this->setName(\'", i(1, "", {key = "i1"}), t"\')", nl(),
		t"\t\t\t->setDescription(\'", i(2, "", {key = "i2"}), t"\')", nl(),
		t"\t\t\t->setDefinition([", nl(),
		t"\t\t\t\tnew InputArgument(\'\', InputArgument::REQUIRED, \'\'),", nl(),
		t"\t\t\t\tnew InputOption(\'\', null, InputOption::VALUE_NONE, \'\'),", nl(),
		t"\t\t\t]);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tprotected function execute(InputInterface $input, OutputInterface $output)", nl(),
		t"\t{", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "subs", descr = "(subs) \"Symfony2 subscriber\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 7}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[7]) end, ae(am[7])), t";", nl(),
		nl(),
		t"use Symfony\\Component\\EventDispatcher\\EventSubscriberInterface;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i1"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 7}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[7]) end, ae(am[7])), t" implements EventSubscriberInterface", nl(),
		t"{", nl(),
		t"\tpublic function __construct()", nl(),
		t"\t{", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic static function getSubscribedEvents()", nl(),
		t"\t{", nl(),
		t"\t\treturn [];", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "transf", descr = "(transf) \"Symfony2 form data transformer\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 8}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[8]) end, ae(am[8])), t";", nl(),
		nl(),
		t"use Symfony\\Component\\Form\\DataTransformerInterface;", nl(),
		t"use Symfony\\Component\\Form\\Exception\\TransformationFailedException;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(3, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 8}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[8]) end, ae(am[8])), t" implements DataTransformerInterface", nl(),
		t"{", nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic function transform(", i(1, "", {key = "i1"}), t")", nl(),
		t"\t{", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic function reverseTransform(", i(2, "", {key = "i2"}), t")", nl(),
		t"\t{", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ent", descr = "(ent) \"Symfony2 doctrine entity\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 9}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[9]) end, ae(am[9])), t";", nl(),
		nl(),
		t"use Doctrine\\ORM\\Mapping as ORM;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" *", nl(),
		t" * @ORM\\Entity()", nl(),
		t" * @ORM\\Table(name=\"", f(function(args, snip) return c_py({"php-symfony2", 9}, "\ntmp = re.match(r\'.*(?=\\.)\', fn).group()\ntmp = re.sub(r\'\\B([A-Z])\', r\'_\\1\', tmp)\nsnip.rv = tmp.lower()\n", python_globals, args, snip, "", am[9]) end, ae(am[9])), t"\")", nl(),
		t" */", nl(),
		f(function(args, snip) return c_py({"php-symfony2", 9}, "\nm = re.search(r\'Abstract\', path)\nif m:\n\tsnip.rv = \'abstract \'\n", python_globals, args, snip, "", am[9]) end, ae(am[9])), t"class ", f(function(args, snip) return c_py({"php-symfony2", 9}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[9]) end, ae(am[9])), nl(),
		t"{", nl(),
		t"\t/**", nl(),
		t"\t * @ORM\\Column(type=\"integer\")", nl(),
		t"\t * @ORM\\GeneratedValue", nl(),
		t"\t * @ORM\\Id", nl(),
		t"\t */", nl(),
		t"\tprivate $id;", nl(),
		t"}"
	}),
	s({trig = "form", descr = "(form) \"Symfony2 form type\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 10}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[10]) end, ae(am[10])), t";", nl(),
		nl(),
		t"use Symfony\\Component\\Form\\AbstractType;", nl(),
		t"use Symfony\\Component\\Form\\FormBuilderInterface;", nl(),
		t"use Symfony\\Component\\OptionsResolver\\OptionsResolverInterface;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(2, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i2"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 10}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[10]) end, ae(am[10])), t" extends AbstractType", nl(),
		t"{", nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic function buildForm(FormBuilderInterface $builder, array $options)", nl(),
		t"\t{", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic function setDefaultOptions(OptionsResolverInterface $resolver)", nl(),
		t"\t{", nl(),
		t"\t\t$resolver->setDefaults();", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * {@inheritDoc}", nl(),
		t"\t */", nl(),
		t"\tpublic function getName()", nl(),
		t"\t{", nl(),
		t"\t\treturn \'", i(1, "", {key = "i1"}), t"\';", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ev", descr = "(ev) \"Symfony2 event\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-symfony2", 11}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[11]) end, ae(am[11])), t";", nl(),
		nl(),
		t"use Symfony\\Component\\EventDispatcher\\Event;", nl(),
		nl(),
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({"@author ", c_viml("g:snips_author")}, " "), {key = "i2"}) }) end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-symfony2", 11}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[11]) end, ae(am[11])), t" extends Event", nl(),
		t"{", nl(),
		t"}"
	}),
	s({trig = "redir", descr = "(redir) \"Symfony2 redirect\"", priority = -50, trigEngine = te("b")}, {
		t"$this->redirect($this->generateUrl(\'", i(1, "", {key = "i1"}), t"\', ", i(2, "", {key = "i2"}), t"));"
	}),
	s({trig = "usecontroller", descr = "(usecontroller) \"Symfony2 use Symfony\\..\\Controller\"", priority = -50, trigEngine = te("b")}, {
		t"use Symfony\\Bundle\\FrameworkBundle\\Controller\\Controller;", i(1, "", {key = "i1"})
	}),
	s({trig = "usereauest", descr = "(usereauest) \"Symfony2 use Symfony\\..\\Request\"", priority = -50, trigEngine = te("b")}, {
		t"use Symfony\\Component\\HttpFoundation\\Request;", i(1, "", {key = "i1"})
	}),
	s({trig = "useroute", descr = "(useroute) \"Symfony2 use Sensio\\..\\Route\"", priority = -50, trigEngine = te("b")}, {
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Route;", i(1, "", {key = "i1"})
	}),
	s({trig = "useresponse", descr = "(useresponse) \"Symfony2 use Symfony\\..\\Response\"", priority = -50, trigEngine = te("b")}, {
		t"use Symfony\\Component\\HttpFoundation\\Response;", i(1, "", {key = "i1"})
	}),
	s({trig = "usefile", descr = "(usefile) \"Symfony2 use Symfony\\..\\File\"", priority = -50, trigEngine = te("b")}, {
		t"use Symfony\\Component\\HttpFoundation\\File\\UploadedFile;", i(1, "", {key = "i1"})
	}),
	s({trig = "useassert", descr = "(useassert) \"Symfony2 use Symfony\\..\\Constraints as Assert\"", priority = -50, trigEngine = te("b")}, {
		t"use Symfony\\Component\\Validator\\Constraints as Assert;", i(1, "", {key = "i1"})
	}),
	s({trig = "usetemplate", descr = "(usetemplate) \"Symfony2 use Sensio\\..\\Template\"", priority = -50, trigEngine = te("b")}, {
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Template;", i(1, "", {key = "i1"})
	}),
	s({trig = "usecache", descr = "(usecache) \"Symfony2 use Sensio\\..\\Cache\"", priority = -50, trigEngine = te("b")}, {
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Cache;", i(1, "", {key = "i1"})
	}),
	s({trig = "usemethod", descr = "(usemethod) \"Symfony2 use Sensio\\..\\Method\"", priority = -50, trigEngine = te("b")}, {
		t"use Sensio\\Bundle\\FrameworkExtraBundle\\Configuration\\Method;", i(1, "", {key = "i1"})
	}),
	s({trig = "usearray", descr = "(usearray) \"Symfony2 use Doctrine\\..\\ArrayCollection\"", priority = -50, trigEngine = te("b")}, {
		t"use Doctrine\\Common\\Collections\\ArrayCollection;", i(1, "", {key = "i1"})
	}),
	s({trig = "useorm", descr = "(useorm) \"Symfony2 use Doctrine\\..\\Mapping as ORM\"", priority = -50, trigEngine = te("b")}, {
		t"use Doctrine\\ORM\\Mapping as ORM;", i(1, "", {key = "i1"})
	}),
	s({trig = "usesecure", descr = "(usesecure) \"Symfony2 use JMS\\..\\Secure\"", priority = -50, trigEngine = te("b")}, {
		t"use JMS\\SecurityExtraBundle\\Annotation\\Secure;", i(1, "", {key = "i1"})
	}),
})
