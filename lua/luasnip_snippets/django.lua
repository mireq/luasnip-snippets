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
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


ls.add_snippets("django", {
	s({trig = "auto", descr = "(auto)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.AutoField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bigint", descr = "(bigint)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.BigIntegerField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "binary", descr = "(binary)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.BinaryField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bool", descr = "(bool)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.BooleanField(", i(0, "default=True", {key = "i0"}), t")"
	}),
	s({trig = "char", descr = "(char)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.CharField(max_length=", i(2, "", {key = "i2"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "comma", descr = "(comma)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.CommaSeparatedIntegerField(max_length=", i(2, "", {key = "i2"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "date", descr = "(date)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DateField(", i(2, "auto_now_add=True, auto_now=True", {key = "i2"}), i(0, ", blank=True, null=True", {key = "i0"}), t")"
	}),
	s({trig = "datetime", descr = "(datetime)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DateTimeField(", i(2, "auto_now_add=True, auto_now=True", {key = "i2"}), i(0, ", blank=True, null=True", {key = "i0"}), t")"
	}),
	s({trig = "decimal", descr = "(decimal)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DecimalField(max_digits=", i(2, "", {key = "i2"}), t", decimal_places=", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "email", descr = "(email)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.EmailField(max_length=", i(2, "75", {key = "i2"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "file", descr = "(file)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FileField(upload_to=", i(2, "path/for/upload", {key = "i2"}), i(0, ", max_length=100", {key = "i0"}), t")"
	}),
	s({trig = "filepath", descr = "(filepath)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FilePathField(path=", i(2, "\"/abs/path/to/dir\"", {key = "i2"}), i(3, ", max_length=100", {key = "i3"}), i(4, ", match=\"*.ext\"", {key = "i4"}), i(5, ", recursive=True", {key = "i5"}), i(0, ", blank=True, ", {key = "i0"}), t")"
	}),
	s({trig = "float", descr = "(float)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FloatField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "image", descr = "(image)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.ImageField(upload_to=", i(2, "path/for/upload", {key = "i2"}), i(3, ", height_field=height, width_field=width", {key = "i3"}), i(0, ", max_length=100", {key = "i0"}), t")"
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.IntegerField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ip", descr = "(ip)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.IPAddressField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "nullbool", descr = "(nullbool)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.NullBooleanField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "posint", descr = "(posint)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.PositiveIntegerField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "possmallint", descr = "(possmallint)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.PositiveSmallIntegerField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "slug", descr = "(slug)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.SlugField(max_length=", i(2, "50", {key = "i2"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "smallint", descr = "(smallint)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.SmallIntegerField(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "text", descr = "(text)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.TextField(", i(0, "blank=True", {key = "i0"}), t")"
	}),
	s({trig = "time", descr = "(time)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.TimeField(", i(2, "auto_now_add=True, auto_now=True", {key = "i2"}), i(0, ", blank=True, null=True", {key = "i0"}), t")"
	}),
	s({trig = "url", descr = "(url)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.URLField(", i(2, "verify_exists=False", {key = "i2"}), i(3, ", max_length=200", {key = "i3"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "xml", descr = "(xml)", priority = -1000, trigEngine = te("w")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.XMLField(schema_path=", i(2, "None", {key = "i2"}), i(0, ", blank=True", {key = "i0"}), t")"
	}),
	s({trig = "fk", descr = "(fk) \"ForeignKey\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.ForeignKey(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "m2m", descr = "(m2m) \"ManyToManyField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.ManyToManyField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "o2o", descr = "(o2o) \"OneToOneField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.OneToOneField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "form", descr = "(form) \"Form\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "FORMNAME", {key = "i1"}), t"(forms.Form):", nl(),
		nl(),
		t"\t", i(2, "# TODO: Define form fields here", {key = "i2"})
	}),
	s({trig = "model", descr = "(model) \"Model\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODELNAME", {key = "i1"}), t"(models.Model):", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tclass Meta:", nl(),
		t"\t\tverbose_name = \"", cp(1), t"\"", nl(),
		t"\t\tverbose_name_plural = \"", cp(1), t"s\"", nl(),
		nl(),
		t"\tdef __str__(self):", nl(),
		t"\t\treturn super(", cp(1), t", self).__str__()", nl()
	}),
	s({trig = "modeladmin", descr = "(modeladmin)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "ModelName", {key = "i1"}), t"Admin(admin.ModelAdmin):", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"admin.site.register(", cp(1), t", ", cp(1), t"Admin)"
	}),
	s({trig = "tabularinline", descr = "(tabularinline) \"Tabular Inline\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "", {key = "i1"}), t"Inline(admin.TabularInline):", nl(),
		t"\t\'\'\'", nl(),
		t"\tTabular Inline View for ", cp(1), nl(),
		t"\t\'\'\'", nl(),
		t"\tmodel = ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i2"}) }) end, {k"i1"}), nl(),
		t"\tmin_num = ", i(3, "3", {key = "i3"}), nl(),
		t"\tmax_num = ", i(4, "20", {key = "i4"}), nl(),
		t"\textra = ", i(5, "1", {key = "i5"}), nl(),
		t"\traw_id_fields = (", i(6, "", {key = "i6"}), t",)"
	}),
	s({trig = "stackedinline", descr = "(stackedinline) \"Stacked Inline\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "", {key = "i1"}), t"Inline(admin.StackedInline):", nl(),
		t"\t\'\'\'", nl(),
		t"\tStacked Inline View for ", cp(1), nl(),
		t"\t\'\'\'", nl(),
		t"\tmodel = ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i2"}) }) end, {k"i1"}), nl(),
		t"\tmin_num = ", i(3, "3", {key = "i3"}), nl(),
		t"\tmax_num = ", i(4, "20", {key = "i4"}), nl(),
		t"\textra = ", i(5, "1", {key = "i5"}), nl(),
		t"\traw_id_fields = (", i(6, "", {key = "i6"}), t",)"
	}),
	s({trig = "r2r", descr = "(r2r)", priority = -1000, trigEngine = te("w")}, {
		t"return render_to_response(\'", i(1, "template.html", {key = "i1"}), t"\', {", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t}", i(0, ", context_instance=RequestContext(request)", {key = "i0"}), nl(),
		t")"
	}),
	s({trig = "modelform", descr = "(modelform) \"ModelForm\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODELNAME", {key = "i1"}), t"Form(forms.ModelForm):", nl(),
		nl(),
		t"\tclass Meta:", nl(),
		t"\t\tmodel = ", cp(1)
	}),
	s({trig = "fbool", descr = "(fbool) \"BooleanField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.BooleanField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fchar", descr = "(fchar) \"CharField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.CharField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fchoice", descr = "(fchoice) \"ChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.ChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fcombo", descr = "(fcombo) \"ComboField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.ComboField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fdate", descr = "(fdate) \"DateField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.DateField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fdatetime", descr = "(fdatetime) \"DateTimeField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.DateTimeField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fdecimal", descr = "(fdecimal) \"DecimalField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.DecimalField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fmail", descr = "(fmail) \"EmailField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.EmailField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ffile", descr = "(ffile) \"FileField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.FileField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ffilepath", descr = "(ffilepath) \"FilePathField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.FilePathField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ffloat", descr = "(ffloat) \"FloatField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.FloatField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fip", descr = "(fip) \"IPAddressField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.IPAddressField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fimg", descr = "(fimg) \"ImageField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.ImageField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fint", descr = "(fint) \"IntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.IntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fmochoice", descr = "(fmochoice) \"ModelChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.ModelChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fmomuchoice", descr = "(fmomuchoice) \"ModelMultipleChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.ModelMultipleChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fmuval", descr = "(fmuval) \"MultiValueField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.MultiValueField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fmuchoice", descr = "(fmuchoice) \"MultipleChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.MultipleChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fnullbool", descr = "(fnullbool) \"NullBooleanField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.NullBooleanField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "freg", descr = "(freg) \"RegexField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.RegexField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fslug", descr = "(fslug) \"SlugField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.SlugField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fsdatetime", descr = "(fsdatetime) \"SplitDateTimeField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.SplitDateTimeField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ftime", descr = "(ftime) \"TimeField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.TimeField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ftchoice", descr = "(ftchoice) \"TypedChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.TypedChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "ftmuchoice", descr = "(ftmuchoice) \"TypedMultipleChoiceField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.TypedMultipleChoiceField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "furl", descr = "(furl) \"URLField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = forms.URLField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "modelfull", descr = "(modelfull) \"Model\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODELNAME", {key = "i1"}), t"(models.Model):", nl(),
		t"\t", i(2, "# TODO: Define fields here", {key = "i2"}), nl(),
		nl(),
		t"\tclass Meta:", nl(),
		t"\t\tverbose_name = \"", cp(1), t"\"", nl(),
		t"\t\tverbose_name_plural = \"", cp(1), t"s\"", nl(),
		nl(),
		t"\tdef __str__(self):", nl(),
		t"\t\treturn super(", cp(1), t", self).__str__()", nl(),
		nl(),
		t"\tdef save(self):", nl(),
		t"\t\treturn super(", cp(1), t", self).save()", nl(),
		nl(),
		t"\tdef get_absolute_url(self):", nl(),
		t"\t\treturn (\'\')", nl(),
		nl(),
		t"\t", i(3, "# TODO: Define custom methods here", {key = "i3"}), nl()
	}),
	s({trig = "mauto", descr = "(mauto) \"AutoField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.AutoField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mbigint", descr = "(mbigint) \"BigIntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.BigIntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mbool", descr = "(mbool) \"BooleanField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.BooleanField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mchar", descr = "(mchar) \"CharField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.CharField(", i(2, "", {key = "i2"}), t", max_length=", i(3, "50", {key = "i3"}), t")"
	}),
	s({trig = "mcoseint", descr = "(mcoseint) \"CommaSeparatedIntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.CommaSeparatedIntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mdate", descr = "(mdate) \"DateField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DateField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mdatetime", descr = "(mdatetime) \"DateTimeField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DateTimeField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mdecimal", descr = "(mdecimal) \"DecimalField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.DecimalField(max_digits=", i(2, "10", {key = "i2"}), t", decimal_places=", i(3, "2", {key = "i3"}), t")"
	}),
	s({trig = "memail", descr = "(memail) \"EmailField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.EmailField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mfile", descr = "(mfile) \"FileField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FileField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mfilepath", descr = "(mfilepath) \"FilePathField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FilePathField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mfloat", descr = "(mfloat) \"FloatField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.FloatField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mip", descr = "(mip) \"IPAddressField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.IPAddressField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mimg", descr = "(mimg) \"ImageField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.ImageField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mint", descr = "(mint) \"IntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.IntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mnullbool", descr = "(mnullbool) \"NullBooleanField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.NullBooleanField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mphone", descr = "(mphone) \"PhoneNumberField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.PhoneNumberField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mposint", descr = "(mposint) \"PositiveIntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.PositiveIntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mpossmallint", descr = "(mpossmallint) \"PositiveSmallIntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.PositiveSmallIntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mslug", descr = "(mslug) \"SlugField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.SlugField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "msmallint", descr = "(msmallint) \"SmallIntegerField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.SmallIntegerField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mtext", descr = "(mtext) \"TextField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.TextField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mtime", descr = "(mtime) \"TimeField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.TimeField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "murl", descr = "(murl) \"URLField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.URLField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "musstate", descr = "(musstate) \"USStateField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.USStateField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "mxml", descr = "(mxml) \"XMLField\"", priority = -50, trigEngine = te("b")}, {
		i(1, "FIELDNAME", {key = "i1"}), t" = models.XMLField(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "adminview", descr = "(adminview) \"Model Admin View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "", {key = "i1"}), t"Admin(admin.ModelAdmin):", nl(),
		t"\t\'\'\'", nl(),
		t"\t\tAdmin View for ", cp(1), nl(),
		t"\t\'\'\'", nl(),
		t"\tlist_display = (\'", i(2, "", {key = "i2"}), t"\',)", nl(),
		t"\tlist_filter = (\'", i(3, "", {key = "i3"}), t"\',)", nl(),
		t"\tinlines = [", nl(),
		t"\t\t", i(4, "", {key = "i4"}), t"Inline,", nl(),
		t"\t]", nl(),
		t"\traw_id_fields = (\'", i(5, "", {key = "i5"}), t"\',)", nl(),
		t"\treadonly_fields = (\'", i(6, "", {key = "i6"}), t"\',)", nl(),
		t"\tsearch_fields = [\'", i(7, "", {key = "i7"}), t"\']", nl(),
		t"admin.site.register(", cp(1), t", ", cp(1), t"Admin)"
	}),
	s({trig = "createview", descr = "(createview) \"Generic Create View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODEL_NAME", {key = "i1"}), t"CreateView(CreateView):", nl(),
		t"\tmodel = ", cp(1), nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "deleteview", descr = "(deleteview) \"Generic Delete View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODEL_NAME", {key = "i1"}), t"DeleteView(DeleteView):", nl(),
		t"\tmodel = ", cp(1), nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "detailview", descr = "(detailview) \"Generic Detail View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODEL_NAME", {key = "i1"}), t"DetailView(DetailView):", nl(),
		t"\tmodel = ", cp(1), nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "listview", descr = "(listview) \"Generic List View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODEL_NAME", {key = "i1"}), t"ListView(ListView):", nl(),
		t"\tmodel = ", cp(1), nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "templateview", descr = "(templateview) \"Generic Template View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "CLASS_NAME", {key = "i1"}), t"(TemplateView):", nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "updateview", descr = "(updateview) \"Generic Update View\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MODEL_NAME", {key = "i1"}), t"UpdateView(UpdateView):", nl(),
		t"\tmodel = ", cp(1), nl(),
		t"\ttemplate_name = \"", i(2, "TEMPLATE_NAME", {key = "i2"}), t"\""
	}),
	s({trig = "dispatch", descr = "(dispatch) \"Dispatch View method\"", priority = -50, trigEngine = te("b")}, {
		t"def dispatch(self, request, *args, **kwargs):", nl(),
		t"\treturn super(", i(1, "CLASS_NAME", {key = "i1"}), t", self).dispatch(request, *args, **kwargs)"
	}),
	s({trig = "context", descr = "(context) \"get_context_data view method\"", priority = -50, trigEngine = te("b")}, {
		t"def get_context_data(self, **kwargs):", nl(),
		t"\tkwargs[\'extra_context\'] = ", i(1, "\'New Value\'", {key = "i1"}), nl(),
		t"\treturn super(", i(2, "CLASS_NAME", {key = "i2"}), t", self).get_context_data(**kwargs)"
	}),
})
