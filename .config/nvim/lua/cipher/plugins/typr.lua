return {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
    config = {
        mode = "words", -- words, phrases
        winlayout = "responsive",
        kblayout = "qwerty",
        wpm_goal = 120,
        numbers = false,
        symbols = true,
        random = true,
        phrases = nil, -- can be a table of strings
        insert_on_start = false,
        stats_filepath = vim.fn.stdpath "data" .. "/typrstats",
        mappings = nil,
        -- or function(buf)   end
        -- mappings = function(buf)
        --  vim.keymap.set("n", "a, anything, { buffer = buf })
        -- end
    },
}
