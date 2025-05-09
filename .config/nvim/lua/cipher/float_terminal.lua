-- State to track floating window
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
local state = {
    floating = {
        buf = -1,
        win = -1,
    },
}

local function create_centered_float(ops)
    -- Get the editor's dimensions
    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")
    -- Calculate window size (80% of screen)
    local win_height = math.floor(height * 0.8)
    local win_width = math.floor(width * 0.8)
    -- Calculate starting position to center the window
    local row = math.floor((height - win_height) / 2)
    local col = math.floor((width - win_width) / 2)
    -- Set up the window options
    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col,
        border = "rounded"
    }

    -- Create a new buffer or use existing one
    local buf = nil
    if not vim.api.nvim_buf_is_valid(ops.buf) then
        buf = vim.api.nvim_create_buf(false, true)
    else
        buf = ops.buf
    end

    -- Create the floating window
    local win = vim.api.nvim_open_win(buf, true, opts)

    -- Set window-local options
    vim.api.nvim_win_set_option(win, 'winblend', 0)
    vim.api.nvim_win_set_option(win, 'winhl', 'Normal:Normal')

    -- If it's a new buffer, create terminal
    if not vim.api.nvim_buf_is_valid(ops.buf) then
        vim.fn.termopen(vim.o.shell)
        -- Force filetype to terminal
        vim.api.nvim_buf_set_option(buf, 'filetype', 'terminal')
        -- Start in insert mode
        vim.cmd('startinsert')
    end

    return { buf = buf, win = win }
end

local function toggleFloat()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = create_centered_float({ buf = state.floating.buf })
    else
        vim.api.nvim_win_hide(state.floating.win)
    end
end

-- Command to toggle the floating window
vim.api.nvim_create_user_command('ToggleFloatingTerminal', function()
    toggleFloat()
end, {})

vim.keymap.set({ "n", "t" }, '<leader>ot', ':ToggleFloatingTerminal<CR>', { noremap = true, silent = true })

