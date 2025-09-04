local util = require 'lspconfig.util'

local root_files = {
  'ty.toml',
  'pyproject.toml',
  '.git',
}

return {
  default_config = {
    cmd = { 'ty', 'server' },
    filetypes = { 'python' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname)
    end,
  },
  docs = {
    description = [[
https://github.com/astral-sh/ty

A Language Server Protocol implementation for ty, an extremely fast Python type checker and language server, written in Rust.

For installation instructions, please refer to the [ty documentation](https://github.com/astral-sh/ty/blob/main/README.md#getting-started).
]],
  },
}
