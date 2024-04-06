## 0.1.2 (2024-04-06)

### Feat

- Added regTrig flag for triggering with regex matching
- Throw execution error only with enabled snips_debug

### Fix

- Robust executing in preview context
- More robust to broken env
- Don't rely on LS_CAPTURE_1/2

## 0.1.1 (2024-03-03)

### Feat

- Removed argument mapping
- Remvoed args_expand support
- Always run python code with toplevel node instance
- Pass related tokens to render_text of children renderer
- Mark only really used nodes as dependencies
- Calculate related tokens from parsed code snippet
- Find related tokens in python code
- Added code globals to snippet context
- Updated snippets
- Strip new lines at end of snippet

### Fix

- Wrap text tokens to include related tokens
- Added missing dependent tokens

### Refactor

- Remvoed args mapping
- Always pass dependent tokens to render_text

## 0.1.0 (2024-02-25)

### Feat

- Added commitizen configuration
- Updated ruby snippets
- Generate snippets with 'm' flag
- Added missing vim-snippets directory
- Updated snippets
- Added current indent to render context
- Render complex nested text tokens
- Added more informations to not converted nodes
- Set configuration before loading
- Log not converted nested nodes
- Added nested input support
- Mark only real nested nodes as nested
- Transform choices token to real choices node
- Added choices node support
- Rendered choices node in smarty snippets
- Mark only dependent nodes as related
- Starting work on proper chocies support
- Don't need node links in VimL snippets
- Updated makefile
- Updated snippets
- Sorting file types
- Removed function already ported to lua
- Added additional snippets
- Implemented choices token
- Added mising UltiSnips subdirectory
- Generated lua snippets using new transpiler infrastructure
- Added new makefile for headless version
- Added additional php snippets
- Added print snippet for javascript
- Added htmldjango snippets
- Added more c snippets
- Added additional c++ snippets
- Expose match context to python code
- Wrong not implemented call
- Code generation fixes
- Temporary add useless node references
- Load snippets in original order
- Added trigger to description
- Generate rest of file
- Generate token code
- Added generator for all tokens
- Added code generators for most tokens
- Prepared rendering
- Added actions code warning
- Added global python code support
- Added token number extraction
- Added code to remove gaps in token list
- Added zero token remapping
- Added insert or copy token resolver
- Retrieve max token number
- Added types for LSTokens
- Added token transformation
- Added token parser
- Added source type to snippet definitions
- Generate file header
- Added filetype mapping generation
- Added global code extraction
- Added property for collected extends
- Wrong path parsing
- Replaced -dir suffix with -dirs suffix
- Added logging configuration
- Added __repr__ for SnippetDefinition
- Implemented get_all_snippets
- Added configuration loader
- Added unified snippet source
- Added .gitignore
- Added token types from original script
- Pass arguments to transpiler
- Started work on headless version without running vim
- Implemented clear priority parsing
- Parsed actions
- Added priority change support
- Added context header support
- Added clear event handling
- Added extends support
- Partial UltiSnips parsing support
- Initial UltiSnips format support
- Added single snippet cparser
- Added shell / vim code remapping directly to lexer
- Aded original tokenizer
- Added base exception type
- Collect snippets and extends
- Added location class
- Loaded snipet definition
- Prepared for parsing
- Added source file scanning
- Added line iterator
- Prepared SnippetDefinition
- Updated generated snippets
- Updated node numbering
- Initialize insert number tokens
- Adapted to different index mapping
- Added tokens_to_text utility function
- Make user configuration not necessary
- Updated snippet transpiler
- Updated python support files
- Updated snippet generator
- Added ure lua implementation of call super python method
- Updated compiler
- Added make clean command
- Added missing common utility
- Added luasnip snippets
- Updated snippet generator
- Updated generation tools
- Added Makefile to build snippets
- Added output_dir support
- Updated ultisnips_to_luasnip
- Imported vim_snippets module
- Updated snippets
- Added transformation node support
- Added actionscript
- Added more generic snippets

### Fix

- Remvoe named groups from regex triggers
- Correctly render empty nested insert nodes
- Correctly handle related tokens inside nested insert nodes
- Collect all related nodes from LSTokens
- Render empty text instead of nested inputs
- Set default value to indent parameter
- Fixes AttributeError: 'list' object has no attribute 'get' if env is empty
- Actions code is not supported currently
- Fix some broken snippets
- Don't duplicate choices snippets
- Correctly trigger not implemented error
- Correctly index snippets
- No special handling for insert tokens needed
- Properly render EndOfTextToken
- Replace node numbers on each level individually
- Access related node numbers using original number
- Preserve original numbers
- Correct global remapping
- Replaced incorrect key addresses
- Load extended filetypes for all snippets

### Refactor

- Removed branching for simple insert node
- Renamed nodes to tokens
- New naming convention for tokens
- Access snippets using snipepts property
- Renamed arguments
- Starting new token numbering code
- Renamed replace placeholder number function
- Moved ultisnips_to_luasnip to tools directory
