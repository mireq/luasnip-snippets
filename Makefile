LANGUAGES := actionscript ada all alpaca apache arduino asm autoit awk bash bib bindzone blade c clojure cmake codeigniter coffee coffee-jasmine coffee-react cpp crystal cs css cuda d dart dart-flutter diff django dosini eelixir ejs elixir elm erlang eruby falcon fortran freemarker fsharp gdscript gitcommit gleam go haml handlebars haskell heex helm help html htmldjango htmljinja html_minimal htmltornado chef idris jade java javascript javascript-angular javascript-bemjson javascript-d3 javascript-ember javascript-jasmine javascript-jasmine-arrow javascript-jsdoc javascript-mocha javascript-node javascript-openui5 javascript_react jenkins jinja jinja2 json jsp julia kotlin laravel ledger lfe lhaskell liquid lpc ls lua make mako markdown matlab mustache objc ocaml octave openfoam org pandoc perl perl6 phoenix php php-laravel php-phpspec php-symfony2 plsql po processing progress proto ps1 puppet purescript python r racket rails README reason rmd rnoweb robot rst ruby rust sass scala scss sh scheme simplemvcf slim smarty snippets soy sql stylus supercollider svelte systemverilog tcl tex texmath textile twig typescript typescript_react typescriptreact verilog vhdl vim vue xhtml xml xslt yii yii-chtml z

# Create a list of target files
TARGETS := $(addprefix lua/luasnip_snippets/,$(addsuffix .lua,$(LANGUAGES)))

# Default target
all: $(TARGETS)

# Pattern rule for converting UltiSnips to LuaSnip
lua/luasnip_snippets/%.lua:
	./tools/ultisnips_to_luasnip_headless.py --ultisnips-dirs tools/vim-snippets/UltiSnips:UltiSnips --snipmate-dirs tools/vim-snippets/snippets --output-dir lua/luasnip_snippets `basename $@ .lua`

# Clean target to remove generated files
clean:
	rm -f $(TARGETS)

# Phony target to avoid conflicts with actual files
.PHONY: all clean
