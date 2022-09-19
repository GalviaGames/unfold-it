local M = {}

function M.new(grid_x, grid_y, cell_width, cell_height)
    local state = {
        x = grid_x,
        y = grid_y,
        cell_width = cell_width,
        cell_height = cell_height,
    }

    state.pos = function(col, row)
        local cell_x = state.x + (col * state.cell_width) - (state.cell_width / 2)
        local cell_y = state.y + (row * state.cell_height) - (state.cell_height / 2)
        return vmath.vector3(cell_x, cell_y, 0)
    end

    return state
end

return M
