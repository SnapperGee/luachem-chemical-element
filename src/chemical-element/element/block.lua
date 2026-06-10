---@alias Block "s"|"p"|"d"|"f"

local s_atomic_numbers = {
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [11] = true,
    [12] = true,
    [19] = true,
    [20] = true,
    [37] = true,
    [38] = true,
    [55] = true,
    [56] = true,
    [87] = true,
    [88] = true
}

local function is_p_block(number)
    return (number >= 5 and number <= 10)
        or (number >= 13 and number <= 18)
        or (number >= 31 and number <= 36)
        or (number >= 49 and number <= 54)
        or (number >= 81 and number <= 86)
        or (number >= 113 and number <= 118)
end

local function is_d_block(number)
    return (number >= 21 and number <= 30)
        or (number >= 39 and number <= 48)
        or (number >= 71 and number <= 80)
        or (number >= 103 and number <= 112)
end

local function is_f_block(number)
    return (number >= 57 and number <= 70)
        or (number >= 89 and number <= 102)
end

--- Returns the block letter an atomic number resides in or ``nil`` if can't
--- be determined.
---@param number integer -- 1..118
---@return Block|nil
local function block_of_atomic_number(number)
    if type(number) ~= "number" or number ~= math.floor(number) then
        return nil
    end

    if s_atomic_numbers[number] then
        return "s"
    end

    if is_p_block(number) then
        return "p"
    end

    if is_d_block(number) then
        return "d"
    end

    if is_f_block(number) then
        return "f"
    end

    return nil
end

return block_of_atomic_number
