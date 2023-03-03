-- print(vim.inspect(opts))

-- Use <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Packages
require('lazy').setup({
  -- colorscheme
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    opts = {
      variant = 'moon'
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd('colorscheme rose-pine')
    end
  },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'rose-pine',
      },
    },
  },

  -- neodev
  { 'folke/neodev.nvim' },

  -- fidget
  { 'j-hui/fidget.nvim' },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      }
    },
    keys = {
      { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Find in Files" },
      { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers"},
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" }
    },
    opts = {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " "
      }
    }
  },

  -- mini.bufremove
  {
    "echasnovski/mini.bufremove",
    keys = {
      { "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
      { "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
    },
  },

  -- mini.comment
  {
    'echasnovski/mini.comment',
    version = '*',
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end
  },

  -- mini.pairs
  {
    'echasnovski/mini.pairs',
    config = function(_, opts)
      require('mini.pairs').setup(opts)
    end
  },

  -- persistance
  {
    'folke/persistence.nvim',
    opts = {
      options = {
        "buffers", "curdir", "tabpages", "winsize", "help", "globals"
      }
    },
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml"
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  }
})

-- Options
vim.opt.autowrite = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 0
-- vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.formatoptions = "jcroqlnt"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true
-- vim.opt.laststatus = 3
vim.opt.number = true
-- vim.opt.pumblend = 10
-- vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 4
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append { W = true, I = true, c = true }
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spelllang = { "en" }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true
-- vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.wildmode = "longest:full,full"
vim.opt.winminwidth = 5
vim.opt.wrap = false

-- Keymaps

-- better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- clear search highlight
vim.keymap.set({"i", "n"}, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Auto commands
local function augroup(name)
  return vim.api.nvim_create_augroup("zs_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Strip trailing whitesapce
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("strip_whitespace"),
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
