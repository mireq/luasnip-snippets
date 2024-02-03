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


local am = { -- list of argument numbers
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16},
	{0, 1, 2, 3, 4, 5, 6, 7, 10, 11, 12, 13, 14},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64},
}
ls.add_snippets("chef", {
	s({trig = "cookbook_file", descr = "(cookbook_file)", priority = -1000, trigEngine = te("w")}, {
		t"# Cookbook File resource", nl(),
		t"cookbook_file ", i(1, "\"/path/to/file\"", {key = "i1"}), t" do # The remote path where the file will reside", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"backup ", i(3, "", {key = "i3"}), t" # How many backups of this file to keep. Set to false  if you want no backups", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"group ", i(5, "", {key = "i5"}), t" # The group owner of the file (string or id)", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"mode ", i(7, "", {key = "i7"}), t" # The octal mode of the file - e.g. 0755", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"owner ", i(9, "", {key = "i9"}), t" # The owner for the file", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"source ", i(11, "", {key = "i11"}), t" # The basename of the source file", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"cookbook ", i(13, "", {key = "i13"}), t" # The cookbook this file is stored in", nl(),
		nl(),
		t"\t", i(14, "#", {key = "i14"}), i(15, " action :create", {key = "i15"}), t" # Create this file (Default)", nl(),
		t"\t", i(16, "#", {key = "i16"}), i(17, " action :create_if_missing", {key = "i17"}), t" # Create only if it doesn\'t exist yet", nl(),
		t"\t", i(18, "#", {key = "i18"}), i(0, " action :delete", {key = "i0"}), t" # Delete this file", nl(),
		t"end", nl()
	}),
	s({trig = "execute", descr = "(execute)", priority = -1000, trigEngine = te("w")}, {
		t"# Execute resource", nl(),
		t"execute ", i(1, "\"command to execute\"", {key = "i1"}), t" do # The command to execute", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"creates ", i(3, "nil", {key = "i3"}), t" # A file this command creates - if the file exists, the command will not be run.", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"cwd ", i(5, "nil", {key = "i5"}), t" # Current working directory to run the command from.", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"environment ", i(7, "nil", {key = "i7"}), t" # A hash of environment variables to set before running this command.", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"group ", i(9, "nil", {key = "i9"}), t" # A group name or group ID that we should change to before running this command.", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"path ", i(11, "nil", {key = "i11"}), t" # An array of paths to use when searching for the command. Nil uses system path.", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"returns ", i(13, "0", {key = "i13"}), t" # The return value of the command - this resource raises an exception if the return value does not match.", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"timeout ", i(15, "nil", {key = "i15"}), t" # How many seconds to let the command run before timing it out.", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"user ", i(17, "nil", {key = "i17"}), t" # A user name or user ID that we should change to before running this command.", nl(),
		t"\t", i(18, "#", {key = "i18"}), t"umask ", i(19, "nil", {key = "i19"}), t" # Umask for files created by the command", nl(),
		nl(),
		t"\t", i(20, "#", {key = "i20"}), i(21, "action :run", {key = "i21"}), t" # Run this command (Default)", nl(),
		t"\t", i(22, "#", {key = "i22"}), i(0, "action :nothing", {key = "i0"}), t" # Do not run this command", nl(),
		t"end", nl()
	}),
	s({trig = "link", descr = "(link)", priority = -1000, trigEngine = te("w")}, {
		t"# Link resource", nl(),
		t"link ", i(1, "\"/target/file\"", {key = "i1"}), t" do # The file name of the link", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"to ", i(3, "", {key = "i3"}), t" # The real file you want to link to", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"link_type ", i(5, "symbolic", {key = "i5"}), t" # Either :symbolic or :hard", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"owner ", i(7, "", {key = "i7"}), t" # The owner of the symlink", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"group ", i(9, "", {key = "i9"}), t" # The group of the symlink", nl(),
		nl(),
		t"\t", i(10, "#", {key = "i10"}), i(11, "action :create", {key = "i11"}), t" # Create a link (Default)", nl(),
		t"\t", i(12, "#", {key = "i12"}), i(0, "action :delete", {key = "i0"}), t" # Delete a link", nl(),
		t"end", nl()
	}),
	s({trig = "package", descr = "(package)", priority = -1000, trigEngine = te("w")}, {
		t"# Package resource", nl(),
		t"package ", i(1, "\"package_name\"", {key = "i1"}), t" do # Name of the package to install", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"version ", i(3, "nil", {key = "i3"}), t" # The version of the package to install/upgrade", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"response_file ", i(5, "nil", {key = "i5"}), t" # An optional response file - used to pre-seed packages (note: the file is fetched by Remote File)", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"source ", i(7, "", {key = "i7"}), t" # Used to provide an optional package source for providers that use a local file (rubygems, dpkg and rpm)", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"options ", i(9, "nil", {key = "i9"}), t" # Add additional options to the underlying package command", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"gem_binary ", i(11, "gem", {key = "i11"}), t" # A gem_package attribut to specify a gem binary. Useful for installing ruby 1.9 gems while running chef in ruby 1.8", nl(),
		nl(),
		t"\t", i(12, "#", {key = "i12"}), i(13, "action :install", {key = "i13"}), t" # Install a package - if version is provided, install that specific version (Default)", nl(),
		t"\t", i(14, "#", {key = "i14"}), i(15, "action :upgrade", {key = "i15"}), t" # Upgrade a package - if version is provided, upgrade to that specific version", nl(),
		t"\t", i(16, "#", {key = "i16"}), i(17, "action :remove", {key = "i17"}), t" # Remove a package", nl(),
		t"\t", i(18, "#", {key = "i18"}), i(0, "action :purge", {key = "i0"}), t" # Purge a package (this usually entails removing configuration files as well as the package itself)", nl(),
		t"end", nl()
	}),
	s({trig = "service", descr = "(service)", priority = -1000, trigEngine = te("w")}, {
		t"# Service resource", nl(),
		t"service ", i(1, "\"service_name\"", {key = "i1"}), t" do # Name of the service", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"enabled ", i(3, "nil", {key = "i3"}), t" # Whether the service is enabled at boot time", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"running ", i(5, "nil", {key = "i5"}), t" # Make sure the service is running. Start if stopped", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"pattern ", i(7, "", {key = "i7"}), t" # Pattern to look for in the process table", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"start_command ", i(9, "nil", {key = "i9"}), t" # Command used to start this service", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"stop_command ", i(11, "nil", {key = "i11"}), t" # Command used to stop this service", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"status_command ", i(13, "nil", {key = "i13"}), t" # Command used to check the service run status", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"restart_command ", i(15, "nil", {key = "i15"}), t" # Command used to restart this service", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"reload_command ", i(17, "nil", {key = "i17"}), t" # Command used to tell this service to reload its configuration", nl(),
		t"\t", i(18, "#", {key = "i18"}), t"supports ", i(19, "false", {key = "i19"}), t" # Features this service supports, ie :restart, :reload, :status", nl(),
		nl(),
		t"\t", i(20, "#", {key = "i20"}), i(21, "action :enable", {key = "i21"}), t" # Enable this service", nl(),
		t"\t", i(22, "#", {key = "i22"}), i(23, "action :disable", {key = "i23"}), t" # Disable this service", nl(),
		t"\t", i(24, "#", {key = "i24"}), i(25, "action :nothing", {key = "i25"}), t" # Don\'t do anything with this service (Default)", nl(),
		t"\t", i(26, "#", {key = "i26"}), i(27, "action :start", {key = "i27"}), t" # Start this service", nl(),
		t"\t", i(28, "#", {key = "i28"}), i(29, "action :stop", {key = "i29"}), t" # Stop this service", nl(),
		t"\t", i(30, "#", {key = "i30"}), i(31, "action :restart", {key = "i31"}), t" # Restart this service", nl(),
		t"\t", i(32, "#", {key = "i32"}), i(0, "action :reload", {key = "i0"}), t" # Reload the configuration for this service", nl(),
		t"end", nl()
	}),
	s({trig = "file", descr = "(file)", priority = -1000, trigEngine = te("w")}, {
		t"# File resource", nl(),
		t"file ", i(1, "\"/path/to/file\"", {key = "i1"}), t" do # Path to the file", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"backup ", i(3, "5", {key = "i3"}), t" # How many backups of this file to keep. Set to false if you want no backups.", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"owner ", i(5, "", {key = "i5"}), t" # The owner for the file", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"group ", i(7, "", {key = "i7"}), t" # The group owner of the file (string or id)", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"mode ", i(9, "", {key = "i9"}), t" # The octal mode of the file (4-digit format)", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"content ", i(11, "nil", {key = "i11"}), t" # A string to write to the file. This will replace any previous content if set", nl(),
		nl(),
		t"\t", i(12, "#", {key = "i12"}), i(13, "action :create", {key = "i13"}), t" # Create this file (Default)", nl(),
		t"\t", i(14, "#", {key = "i14"}), i(15, "action :delete", {key = "i15"}), t" # Delete this file", nl(),
		t"\t", i(16, "#", {key = "i16"}), i(0, "action :touch", {key = "i0"}), t" # Touch this file (update the mtime/atime)", nl(),
		t"end", nl()
	}),
	s({trig = "directory", descr = "(directory)", priority = -1000, trigEngine = te("w")}, {
		t"# Directory resource", nl(),
		t"directory ", i(1, "\"/path/to/dir\"", {key = "i1"}), t" do # The path to the directory", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"group ", i(3, "", {key = "i3"}), t" # The group owner of the directory (string or id)", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"mode ", i(5, "", {key = "i5"}), t" # The octal mode of the directory, eg 0755", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"owner ", i(7, "", {key = "i7"}), t" # The owner for the directory", nl(),
		t"\t", i(8, "#", {key = "i10"}), t"recursive ", i(9, "false", {key = "i11"}), t" # When deleting the directory, delete it recursively. When creating the directory, create recursively (ie, mkdir -p)", nl(),
		nl(),
		t"\t", i(10, "#", {key = "i12"}), i(11, "action :create", {key = "i13"}), t" # Create this directory (Default)", nl(),
		t"\t", i(12, "#", {key = "i14"}), i(0, "action :delete", {key = "i0"}), t" # Delete this directory", nl(),
		t"end", nl()
	}),
	s({trig = "template", descr = "(template)", priority = -1000, trigEngine = te("w")}, {
		t"# Template resource", nl(),
		t"template ", i(1, "\"/path/to/file\"", {key = "i1"}), t" do # Path to the file", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"cookbook ", i(3, "nil", {key = "i3"}), t" # Specify the cookbook where the template is located, default is current cookbook", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"source ", i(5, "nil", {key = "i5"}), t" # Template source file. Found in templates/default for the cookbook", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"variables ", i(7, "", {key = "i7"}), t" # Variables to use in the template", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"local ", i(9, "false", {key = "i9"}), t" # Is the template already present on the node?", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"backup ", i(11, "5", {key = "i11"}), t" # How many backups of this file to keep. Set to false if you want no backups.", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"owner ", i(13, "", {key = "i13"}), t" # The owner for the file", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"group ", i(15, "", {key = "i15"}), t" # The group owner of the file (string or id)", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"mode ", i(17, "", {key = "i17"}), t" # The octal mode of the file (4-digit format)", nl(),
		t"\t", i(18, "#", {key = "i18"}), t"content ", i(19, "nil", {key = "i19"}), t" # A string to write to the file. This will replace any previous content if set", nl(),
		nl(),
		t"\t", i(20, "#", {key = "i20"}), i(21, "action :create", {key = "i21"}), t" # Create the file (Default)", nl(),
		t"\t", i(22, "#", {key = "i22"}), i(23, "action :delete", {key = "i23"}), t" # Delete this file", nl(),
		t"\t", i(24, "#", {key = "i24"}), i(0, "action :touch", {key = "i0"}), t" # Touch this file (update the mtime/atime)", nl(),
		t"end", nl()
	}),
	s({trig = "svn", descr = "(svn)", priority = -1000, trigEngine = te("w")}, {
		t"# SCM Resource, Chef::Provider::Subversion", nl(),
		t"svn ", i(1, "\"/destination/path\"", {key = "i1"}), t" do # Path to clone/checkout/export the source to", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"repository ", i(3, "", {key = "i3"}), t" # URI of the repository", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"revision ", i(5, "\"HEAD\"", {key = "i5"}), t" # revision to checkout. can be symbolic, like \"HEAD\" or an SCM specific revision id", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"reference ", i(7, "", {key = "i7"}), t" # (Git only) alias for revision", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"user ", i(9, "nil", {key = "i9"}), t" # System user to own the checked out code", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"group ", i(11, "nil", {key = "i11"}), t" # System group to own the checked out code", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"svn_username ", i(13, "", {key = "i13"}), t" # (Subversion only) Username for Subversion operations", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"svn_password ", i(15, "", {key = "i15"}), t" # (Subversion only) Password for Subversion operations", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"svn_arguments ", i(17, "", {key = "i17"}), t" # (Subversion only) Extra arguments passed to the subversion command", nl(),
		nl(),
		t"\t", i(18, "#", {key = "i18"}), i(19, "action :sync", {key = "i19"}), t" # Update the source to the specified revision, or get a new checkout (Default)", nl(),
		t"\t", i(20, "#", {key = "i20"}), i(21, "action :checkout", {key = "i21"}), t" # Checkout the source. Does nothing if a checkout is available", nl(),
		t"\t", i(22, "#", {key = "i22"}), i(0, "action :export", {key = "i0"}), t" # Export the source, excluding or removing any version control artifacts", nl(),
		t"end", nl()
	}),
	s({trig = "git", descr = "(git)", priority = -1000, trigEngine = te("w")}, {
		t"# SCM Resource, Chef::Provider::Git", nl(),
		t"git ", i(1, "\"/destination/path\"", {key = "i1"}), t" do # Path to clone/checkout/export the source to", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"repository ", i(3, "", {key = "i3"}), t" # URI of the repository", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"revision ", i(5, "\"HEAD\"", {key = "i5"}), t" # revision to checkout. can be symbolic, like \"HEAD\" or an SCM specific revision id", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"reference ", i(7, "", {key = "i7"}), t" # (Git only) alias for revision", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"user ", i(9, "nil", {key = "i9"}), t" # System user to own the checked out code", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"group ", i(11, "nil", {key = "i11"}), t" # System group to own the checked out code", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"depth ", i(13, "nil", {key = "i13"}), t" # (Git only) Number of past revisions to include in Git shallow clone", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"enable_submodules ", i(15, "\"false\"", {key = "i15"}), t" # (Git only) performs a submodule init and submodule update", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"remote ", i(17, "\"origin\"", {key = "i17"}), t" # (Git only) remote repository to use for syncing an existing clone", nl(),
		t"\t", i(18, "#", {key = "i18"}), t"ssh_wrapper ", i(19, "", {key = "i19"}), t" # (Git only) path to a wrapper script for running SSH with git. GIT_SSH environment variable is set to this.", nl(),
		nl(),
		t"\t", i(20, "#", {key = "i20"}), i(21, "action :sync", {key = "i21"}), t" # Update the source to the specified revision, or get a new clone (Default)", nl(),
		t"\t", i(22, "#", {key = "i22"}), i(23, "action :checkout", {key = "i23"}), t" # Clone the source. Does nothing if a checkout is available", nl(),
		t"\t", i(24, "#", {key = "i24"}), i(0, "action :export", {key = "i0"}), t" # Export the source, excluding or removing any version control artifacts", nl(),
		t"end", nl()
	}),
	s({trig = "deploy", descr = "(deploy)", priority = -1000, trigEngine = te("w")}, {
		t"# Deploy resource", nl(),
		t"deploy ", i(1, "\"/deploy/dir/\"", {key = "i1"}), t" do # Path to deploy to", nl(),
		t"\t", i(2, "#", {key = "i2"}), t"deploy_to ", i(3, "", {key = "i3"}), t" # The \"meta root\" for your application.", nl(),
		t"\t", i(4, "#", {key = "i4"}), t"repository ", i(5, "", {key = "i5"}), t" # URI of the repository", nl(),
		t"\t", i(6, "#", {key = "i6"}), t"repo ", i(7, "", {key = "i7"}), t" # alias for repository", nl(),
		t"\t", i(8, "#", {key = "i8"}), t"revision ", i(9, "\"HEAD\"", {key = "i9"}), t" # revision to checkout. can be symbolic, like \"HEAD\" or an SCM specific revision id", nl(),
		t"\t", i(10, "#", {key = "i10"}), t"branch ", i(11, "", {key = "i11"}), t" # alias for revision", nl(),
		t"\t", i(12, "#", {key = "i12"}), t"user ", i(13, "nil", {key = "i13"}), t" # System user to run the deploy as", nl(),
		t"\t", i(14, "#", {key = "i14"}), t"group ", i(15, "nil", {key = "i15"}), t" # System group to run the deploy as", nl(),
		t"\t", i(16, "#", {key = "i16"}), t"svn_username ", i(17, "", {key = "i17"}), t" # (Subversion only) Username for Subversion operations}", nl(),
		t"\t", i(18, "#", {key = "i18"}), t"svn_password ", i(19, "", {key = "i19"}), t" # (Subversion only) Password for Subversion operations}", nl(),
		t"\t", i(20, "#", {key = "i20"}), t"svn_arguments ", i(21, "", {key = "i21"}), t" # (Subversion only) Extra arguments passed to the subversion command}", nl(),
		t"\t", i(22, "#", {key = "i22"}), t"shallow_clone ", i(23, "nil", {key = "i23"}), t" # (Git only) boolean, true sets clone depth to 5", nl(),
		t"\t", i(24, "#", {key = "i24"}), t"enable_submodules ", i(25, "false", {key = "i25"}), t" # (Git only) performs a submodule init and submodule update", nl(),
		t"\t", i(26, "#", {key = "i26"}), t"remote ", i(27, "\"origin\"", {key = "i27"}), t" # (Git only) remote repository to use for syncing an existing clone", nl(),
		t"\t", i(28, "#", {key = "i28"}), t"ssh_wrapper ", i(29, "", {key = "i29"}), t" # (Git only) path to a wrapper script for running SSH with git. GIT_SSH environment variable is set to this.", nl(),
		t"\t", i(30, "#", {key = "i30"}), t"git_ssh_wrapper ", i(31, "", {key = "i31"}), t" # alias for ssh_wrapper", nl(),
		t"\t", i(32, "#", {key = "i32"}), t"scm_provider ", i(33, "Chef::Provider::Git", {key = "i33"}), t" # SCM Provider to use.", nl(),
		t"\t", i(34, "#", {key = "i34"}), t"repository_cache ", i(35, " \"cached-copy\"", {key = "i35"}), t" # Name of the subdirectory where the pristine copy of your app\'s source is kept", nl(),
		t"\t", i(36, "#", {key = "i36"}), t"environment ", i(37, "", {key = "i37"}), t" # A hash of the form {\"ENV_VARIABLE\"=>\"VALUE\"}}", nl(),
		t"\t", i(38, "#", {key = "i38"}), t"purge_before_symlink ", i(39, "%w(log tmp/pids public/system)", {key = "i39"}), t" # An array of paths, relative to app root, to be removed from a checkout before symlinking", nl(),
		t"\t", i(40, "#", {key = "i40"}), t"create_dirs_before_symlink ", i(41, "%w(tmp public config)", {key = "i41"}), t" # Directories to create before symlinking. Runs after purge_before_symlink", nl(),
		t"\t", i(42, "#", {key = "i42"}), t"symlinks ", i(43, "\"system\" => \"public/system\", \"pids\" => \"tmp/pids\", \"log\" => \"log\"", {key = "i43"}), t" # A hash that maps files in the shared directory to their paths in the current release", nl(),
		t"\t", i(44, "#", {key = "i44"}), t"symlink_before_migrate ", i(45, "\"config/database.yml\" => \"config/database.yml\"", {key = "i45"}), t" # A hash that maps files in the shared directory into the current release. Runs before migration", nl(),
		t"\t", i(46, "#", {key = "i46"}), t"migrate ", i(47, "false", {key = "i47"}), t" # Should the migration command be executed? (true or false)", nl(),
		t"\t", i(48, "#", {key = "i48"}), t"migration_command ", i(49, "", {key = "i49"}), t" # A string containing a shell command to execute to run the migration", nl(),
		t"\t", i(50, "#", {key = "i50"}), t"restart_command ", i(51, "nil", {key = "i51"}), t" # A code block to evaluate or a string containing a shell command", nl(),
		t"\t", i(52, "#", {key = "i52"}), t"before_migrate ", i(53, "\"deploy/before_migrate.rb\"", {key = "i53"}), t" # A block or path to a file containing chef code to run before migrating", nl(),
		t"\t", i(54, "#", {key = "i54"}), t"before_symlink ", i(55, "\"deploy/before_symlink.rb\"", {key = "i55"}), t" # A block or path to a file containing chef code to run before symlinking", nl(),
		t"\t", i(56, "#", {key = "i56"}), t"before_restart ", i(57, "\"deploy/before_restart.rb\"", {key = "i57"}), t" # A block or path to a file containing chef code to run before restarting", nl(),
		t"\t", i(58, "#", {key = "i58"}), t"after_restart ", i(59, "\"deploy/after_restart.rb\"", {key = "i59"}), t" # A block or path to a file containing chef code to run after restarting", nl(),
		nl(),
		t"\t", i(60, "#", {key = "i60"}), i(61, ":deploy", {key = "i61"}), t" # Deploy the application (Default)", nl(),
		t"\t", i(62, "#", {key = "i62"}), i(63, ":force_deploy", {key = "i63"}), t" # For the revision deploy strategy, this removes any existing release of the same code version and re-deploys in its place", nl(),
		t"\t", i(64, "#", {key = "i64"}), i(0, ":rollback", {key = "i0"}), t" # Rollback the application to the previous release", nl(),
		t"end"
	}),
})
