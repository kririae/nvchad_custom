local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "typescript",
    "c",
    "cpp",
    "cuda",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "prettier",

    -- c/cpp stuff
    "clangd",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
