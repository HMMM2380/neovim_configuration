vim.env.http_proxy = "http://127.0.0.1:7897"
vim.env.https_proxy = "http://127.0.0.1:7897"
require("core.options")
require("core.keymap")
require("config.lazy")
vim.cmd.colorscheme("tokyonight")
