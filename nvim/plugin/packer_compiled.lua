-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nk/.cache/nvim/packer_hererocks/2.1.1693350652/share/lua/5.1/?.lua;/home/nk/.cache/nvim/packer_hererocks/2.1.1693350652/share/lua/5.1/?/init.lua;/home/nk/.cache/nvim/packer_hererocks/2.1.1693350652/lib/luarocks/rocks-5.1/?.lua;/home/nk/.cache/nvim/packer_hererocks/2.1.1693350652/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nk/.cache/nvim/packer_hererocks/2.1.1693350652/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc-go"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/coc-go",
    url = "https://github.com/josa42/coc-go"
  },
  ["coc-prisma"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/coc-prisma",
    url = "https://github.com/pantharshit00/coc-prisma"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["eslint.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/eslint.nvim",
    url = "https://github.com/MunifTanjim/eslint.nvim"
  },
  ["format-on-save.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/format-on-save.nvim",
    url = "https://github.com/elentok/format-on-save.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["goyo.vim"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2      function! s:goyo_enter()\n        set linebreak\n        set spell spelllang=en_us\n      endfunction\n\n      function! s:goyo_leave()\n        set nolinebreak\n        set nospell\n      endfunction\n\n      autocmd! User GoyoLeave nested call <SID>goyo_leave()\n      autocmd! User GoyoEnter nested call <SID>goyo_enter()\n    \bcmd\bvim\0" },
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/html5.vim",
    url = "https://github.com/othree/html5.vim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n�\2\0\0\a\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\3=\3\15\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\vconfig\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\1\nnotes\f~/notes\19core.concealer\18core.defaults\16core.export\17core.summary\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  undotree = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-flutter"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-flutter",
    url = "https://github.com/thosakwe/vim-flutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript",
    url = "https://github.com/peitalin/vim-jsx-typescript"
  },
  ["vim-lsc"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-lsc",
    url = "https://github.com/natebosch/vim-lsc"
  },
  ["vim-lsc-dart"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-lsc-dart",
    url = "https://github.com/natebosch/vim-lsc-dart"
  },
  ["vim-prisma"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-prisma",
    url = "https://github.com/prisma/vim-prisma"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-styled-components",
    url = "https://github.com/styled-components/vim-styled-components"
  },
  ["vim-svelte"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["vim-svelte-plugin"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-svelte-plugin",
    url = "https://github.com/leafOfTree/vim-svelte-plugin"
  },
  ["vim-tsx"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-tsx",
    url = "https://github.com/ianks/vim-tsx"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/nk/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\3=\3\15\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\vconfig\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\1\nnotes\f~/notes\19core.concealer\18core.defaults\16core.export\17core.summary\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: goyo.vim
time([[Config for goyo.vim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2      function! s:goyo_enter()\n        set linebreak\n        set spell spelllang=en_us\n      endfunction\n\n      function! s:goyo_leave()\n        set nolinebreak\n        set nospell\n      endfunction\n\n      autocmd! User GoyoLeave nested call <SID>goyo_leave()\n      autocmd! User GoyoEnter nested call <SID>goyo_enter()\n    \bcmd\bvim\0", "config", "goyo.vim")
time([[Config for goyo.vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
