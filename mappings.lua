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
    ["<leader>bd"] = {
      function()
        require("bufdelete").bufdelete(0, true)
      end,
    },

    -- tab-related management
    ["<leader>to"] = { ":tabnew <CR>", "Create the tab" },
    ["<leader>tc"] = { ":tabclose <CR>", "Close the tab" },
    ["<leader>tn"] = { ":tabnext <CR>", "Go to the next tab" },
    ["<leader>tp"] = { ":tabprevious <CR>", "Go to the previous tab" },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    ["<ESC>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
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
