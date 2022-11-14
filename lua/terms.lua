local Terminal  = require('toggleterm.terminal').Terminal
-- simple zsh terminal
local zsh_simple = Terminal:new({ cmd = "zsh", hidden = true })

function _zsh_simple_toggle()
    zsh_simple:toggle()
end

-- floating zsh terminal
local zsh_float = Terminal:new({ cmd = "zsh", hidden = true, direction = "float" })

function _zsh_float_toggle()
    zsh_float:toggle()
end

-- lazygit

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end
