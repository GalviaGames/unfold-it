local M = {}

local levels = {
    {
        initial_position = { col = 9, row = 5 },
        shape = {
        { col = 2, row = 3 },
        { col = 2, row = 4 },
        { col = 2, row = 5 },
        { col = 2, row = 6 },
        { col = 2, row = 7 },
        { col = 2, row = 8 },
        { col = 2, row = 9 },
        { col = 3, row = 3 },
        { col = 3, row = 6 },
        { col = 3, row = 9 },
        { col = 4, row = 3 },
        { col = 4, row = 6 },
        { col = 4, row = 9 },
        { col = 5, row = 3 },
        { col = 5, row = 4 },
        { col = 5, row = 5 },
        { col = 5, row = 6 },
        { col = 5, row = 7 },
        { col = 5, row = 8 },
        { col = 5, row = 9 },
        { col = 6, row = 3 },
        { col = 6, row = 4 },
        { col = 6, row = 5 },
        { col = 6, row = 6 },
        { col = 6, row = 7 },
        { col = 6, row = 8 },
        { col = 6, row = 9 },
        { col = 7, row = 3 },
        { col = 7, row = 6 },
        { col = 7, row = 9 },
        { col = 8, row = 3 },
        { col = 8, row = 6 },
        { col = 8, row = 9 },
        { col = 9, row = 3 },
        { col = 9, row = 4 },
        { col = 9, row = 5 },
        { col = 9, row = 6 },
        { col = 9, row = 7 },
        { col = 9, row = 8 },
        { col = 9, row = 9 },
         }
    },
}

function M.get()
    return levels
end

return M
