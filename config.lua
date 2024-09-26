-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4No
--
vim.opt.timeoutlen = 500;
vim.opt.shiftwidth = 4;
vim.opt.tabstop = 4;
vim.opt.smartindent = true;

lvim.transparent_window = true;
lvim.keys.normal_mode["<C-a>"] = "ggVG";
lvim.keys.insert_mode["<C-a>"] = "<Esc>ggVG";

-- Copy current line to down
lvim.keys.normal_mode["<C-d>"] = "yyp"
lvim.keys.insert_mode["<C-d>"] = "<Esc>:y<CR>pi";

-- Copy and past
lvim.keys.normal_mode["<C-c>"] = ":y<CR>";
lvim.keys.normal_mode["<C-v>"] = "p";
lvim.keys.insert_mode["<C-c>"] = "<Esc>:y<CR>i";
lvim.keys.insert_mode["<C-v>"] = "<Esc>pi";

-- Undo
--lvim.keys.normal_mode["<C-z>"] = "u";
--lvim.keys.insert_mode["<C-z>"] = "<Esc>:u<CR>i";

-- Search on file
lvim.keys.normal_mode["<C-f>"] = ":Telescope current_buffer_fuzzy_find<CR>";
lvim.keys.insert_mode["<C-f>"] = "<Esc>:Telescope current_buffer_fuzzy_find<CR>";

-- save file
lvim.keys.normal_mode["<C-s>"] = ":w<CR>";
lvim.keys.insert_mode["<C-s>"] = "<Esc>:w<CR>i"

-- close
lvim.keys.normal_mode["<C-q>"] = "<Esc>:qa<CR>";
lvim.keys.visual_mode["<C-q>"] = "<Esc>:qa<CR>";
lvim.keys.insert_mode["<C-q>"] = "<Esc>:w<CR>:qa<CR>";

-- tab multline
lvim.keys.visual_mode["<Tab>"] = ">gv";
lvim.keys.visual_mode["<S-Tab>"] = "<gv";
lvim.keys.insert_mode["<S-Tab>"] = "<C-o>4h<Del><Del><Del><Del><C-o>";

-- identation
lvim.keys.visual_mode["<C-S-I>"] = "gg=G"

-- replace word on archive
-- lvim.keys.normal_mode["<S-w>"] = ":s/";
-- lvim.keys.insert_mode["<S-w>"] = "<Esc>:%s/";

-- Plugins
lvim.plugins = {
    { "christoomey/vim-tmux-navigator" },
    { "preservim/nerdcommenter" }
}
