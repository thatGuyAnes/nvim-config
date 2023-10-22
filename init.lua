
vim.cmd([[let $PATH = $HOME .. '/.asdf/installs/ruby/3.2.1/bin:' .. $PATH]])

require('user.highlights')
require("user.color")
require('user.options')
require('user.maps')
require('user.plugins')
