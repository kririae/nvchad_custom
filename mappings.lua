---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["J"] = { "5jzz", opts = { nowait = true } },
    ["K"] = { "5kzz", opts = { nowait = true } },
    ["G"] = { "Gzz", opts = { silent = true } },
    ["<C-p>"] = { ":Telescope find_files <CR>", "Telescope Files" },
    ["<A-o>"] = { ":ClangdSwitchSourceHeader <CR>", "Switch between source and header files" },
    ["*"] = { 'viwy/\\V<C-r>"<CR>N', opts = { silent = true } },
  },

  i = {
    ["<C-p>"] = { ":Telescope find_files <CR>", "Telescope Files" },
    ["<A-o>"] = { ":ClangdSwitchSourceHeader <CR>", "Switch between source and header files" },
  },
}

M.leader = {
  n = {
    ["<leader>h"] = { "<C-w>h" },
    ["<leader>j"] = { "<C-w>j" },
    ["<leader>k"] = { "<C-w>k" },
    ["<leader>l"] = { "<C-w>l" },
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle floating term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle floating term",
    },
  },
}

return M
