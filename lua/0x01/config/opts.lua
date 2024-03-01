local opt = vim.opt
opt.termguicolors = true
opt.nu = true
opt.relativenumber = true
opt.smartindent = true
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
